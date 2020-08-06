function ADD_ROOT_BIN_DIR_TO_PATH_VARIABLE {
  $env:Path += ";$env:HOMEPATH\code\modularize-terminal-commands\windows\copy-over\bin"  
}

function RUN_POWERSHELL_SCRIPTS_IN_DIRECTORY {
    $DIRECTORY_PATH_TO_SCRIPTS = $args[0]

    Get-ChildItem $DIRECTORY_PATH_TO_SCRIPTS -Filter *.ps1 | 
    Foreach-Object {
        $FULL_NAME =  $_.FullName
    
        . $FULL_NAME
    }  
}

function SETUP_ALIASES {

  . RUN_POWERSHELL_SCRIPTS_IN_DIRECTORY "C:\Users\scott\code\modularize-terminal-commands\windows\copy-over\aliases" 
}

function SETUP_ENVVARS() {
  . RUN_POWERSHELL_SCRIPTS_IN_DIRECTORY "C:\Users\scott\code\modularize-terminal-commands\windows\copy-over\envvars" 
}

. SETUP_ALIASES
. SETUP_ENVVARS
. ADD_ROOT_BIN_DIR_TO_PATH_VARIABLE
