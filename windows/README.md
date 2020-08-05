# Windows Setup

### Create Profile
https://blog.cloudbusiness.com/hub/how-to-set-up-a-powershell-profile


### Get path to $profile
In Powershell run
```
$profile
```

This will output a path. This path is the path to open
for the next step. 

### Edit $profile file
Add the following to the profile file. 
```
$env:MY_ROOT_POWERSHELL_SCRIPTS_DIR="C:\User..." # path to your root directory for the powershell scripts 
. $env:MY_ROOT_POWERSHELL_SCRIPTS_DIR\bin\setup.shell.ps1 
```

Now anytime you open up Powershell the project the commands
and aliases will be readily available
