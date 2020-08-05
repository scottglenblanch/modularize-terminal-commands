echo 'Initialize Windows'

$CURRENT_DIRECTORY=""
$MY_ROOTS_POWERSHELL_SCRIPTS_DIR=""
function SET_VARIABLES {
    $CURRENT_DIRECTORY = (Get-Location).Path
    $MY_ROOTS_POWERSHELL_SCRIPTS_DIR = Read-Host -Prompt "Where do you want the root scripts directory to be? (Default is current directory) $(pwd)"
     
    
    if ([string]::IsNullOrEmpty($MY_ROOTS_POWERSHELL_SCRIPTS_DIR)) {
        $MY_ROOTS_POWERSHELL_SCRIPTS_DIR = $CURRENT_DIRECTORY
    } else {
        $MY_ROOTS_POWERSHELL_SCRIPTS_DIR = Resolve-Path -Path "$MY_ROOTS_POWERSHELL_SCRIPTS_DIR"
    }
}

function COPY_SCRIPTS_OVER {
    Copy-Item $PSScriptRoot\copy-over\* $MY_ROOTS_POWERSHELL_SCRIPTS_DIR -Recurse
}

function CREATE_PROFILE {
    New-item –type file –force $profile
}

function CONCAT_TO_PROFILE_FILE {
    $CONTENT_TO_ADD = '
        $env:MY_ROOT_POWERSHELL_SCRIPTS_DIR="'+$MY_ROOTS_POWERSHELL_SCRIPTS_DIR+'"
        . "$env:MY_ROOT_POWERSHELL_SCRIPTS_DIR\bin\setup.shell.ps1"  
    '

    Add-Content -Path "$profile" -Value "$CONTENT_TO_ADD" 
}

function SETUP_PROFILE {
    . CREATE_PROFILE

    . CONCAT_TO_PROFILE_FILE
}

. SET_VARIABLES
COPY_SCRIPTS_OVER
. SETUP_PROFILE
