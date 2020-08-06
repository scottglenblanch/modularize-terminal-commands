function GO_TO_ROOT_ALIASES_DIR {cd $env:MY_ROOT_ALIASES_DIR}
Set-Alias -Name my.aliases.dir -Value GO_TO_ROOT_ALIASES_DIR

function GO_TO_ROOT_AUTOCOMPLETE_DIR {cd $env:MY_ROOT_ALIASES_DIR}
Set-Alias -Name  my.autocomplete.dir -Value GO_TO_ROOT_AUTOCOMPLETE_DIR

function GO_TO_MY_ROOT_POWERSHELL_SCRIPTS_DIR {cd $env:MY_ROOT_POWERSHELL_SCRIPTS_DIR}
Set-Alias -Name  my.powershell.scripts.dir -Value GO_TO_MY_ROOT_POWERSHELL_SCRIPTS_DIR

function GO_TO_MY_ROOT_BIN_DIR {cd $env:MY_ROOT_BIN_DIR}
Set-Alias -Name my.bin.dir -Value GO_TO_MY_ROOT_BIN_DIR

function GO_TO_MY_ROOT_ENVVARS_DIR {cd $env:MY_ROOT_ENVVARS_DIR}
Set-Alias -Name  my.envvars.dir -Value GO_TO_MY_ROOT_ENVVARS_DIR

function GO_TO_ROOT_TEMPLATES_DIR {cd $env:MY_ROOT_TEMPLATES_DIR}
Set-Alias -Name my.templates.dir -Value GO_TO_ROOT_TEMPLATES_DIR

function GO_TO_DESKTOP_DIR {cd $env:PUBLIC\desktop}
Set-Alias -Name  desktop.dir -Value GO_TO_DESKTOP_DIR

function GO_TO_HOME_DIR {cd $env:HOMEPATH}
Set-Alias -Name  home.dir -Value GO_TO_HOME_DIR
