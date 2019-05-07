This is base scripts that I like to use

Feel free to download or fork this project

Future versions will have Linux distributions and Windows

To get running on Mac

1.) Download from github repository. I recommend adding this to your 'home' directory, located at ~. It might work in other directories.
2.) Then make osx contents executable. chmod -R +x <path to osx>
3.) Inside of osx folder, run ./initGlobalSetup
- This will copy over folders aliases, bin, and envvars to the ~ directory
4.) Then in either ~/.bashrc or ~/.zshrc add
source ~/bin/initShell
- If my code is working, this will then have the commands, envvars, and aliases all set up
