# Initialize Bash Scripts

Creates commands and aliases to help productivity. 

Current version supports MacOsX. Future versions will support popular Linux distributions and Windows. 


## Installation

#### OS X

```sh
git clone git@github.com:scottglenblanch/initialize-base-scripts.git
chmod -R +x ~/initialize-bases-scripts/osx  
source ~/initialize-bases-scripts/osx/initHomeSetup
```

#### Linux:

Future Todo

#### Windows:

Future Todo

## Usage example

Commands

* chrome: opens up chrome pointing to google.com
* chrome <url>: opens up that url in chrome 
* killchrome: will gracefully kill chrome
* google: After running you can input a search in the terminal, which will then open up a google search in chrome
* youtube: Will ask for a search and then open that search in youtube
* killapplications: Will kill all application found in /Applications
* createCommand: Create your own custom command. You can be in any directory to run this. It will make a copy of the command and hardlink that same file to ~/bin  
* createCommandOpenUrl <command name> <url>: Will create a command which when called will open up the url specified
* createCommandOpenApplication <command name> <application name in /Applications>: Will create a command to open an application found in /Applications  
* deleteCommand <command name>: Will delete file in ~/bin and current directory  
* linkToHomeBin <file name>: Hard links file to ~/bin
* linkFilesInPwdToHomeBin: Hard links all file in current directory to ~/bin
* linkToAliases <file name>: Will take file name and hard link to ~/aliases. Aliases in that file are available when the terminal is restarted
* initShell: command ran from either ~/.bashrc or ~/.zshrc. To run it you need run code 
  
  ```source ~/bin/initShell```   
* initAliases: used by initShell to attach all aliases from files in ~/aliases
* initEnvironmentVariables: used by initShell to run scripts in ~/envvars. These scripts update environment variables. 


## Release History
* 0.0.1
    * Work in progress

## Meta

Scott Blanch – [@scottglenblanch](https://twitter.com/dbader_org) – scottglenblanch@gmail.com

Distributed under the MIT license. See ``LICENSE`` for more information.

[https://github.com/scottglenblanch/initialize-base-scripts](https://github.com/dbader/)

## Contributing

1. Fork it (<https://github.com/scottglenblanch/initialize-base-scripts/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request



