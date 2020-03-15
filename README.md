# Project Based Bashing
Aides in creating and encapsulating those bash scripts per project. Bash scripts will be located in both the project directory
as well as in global bash directory, aka '$MY_ROOT_BASH_DIR'.

## Overview
Scripts generated wit this too will be nested within the project folder as well
as in the '$MY_ROOT_BASH_DIR' bash scripts folder. The location of
'$MY_ROOT_BASH_DIR' is determined when you install this.

## Support

### Script Interpreters
Current support is for bash (Bourne-again shell).

### Operating Systems
Current version supports MacOsX. Future versions will support popular Linux distributions and Windows.

## Installation

#### OS X

```sh
git clone git@github.com:scottglenblanch/setup-bash.git
chmod -R +x ./modular-bashing/osx  
./modular-bashing/osx/initialize
```

The initialize script will ask where you want the root bash directory to be.

Input this using the absolute path. (As of right now it won't work with the ~
for $HOME path. Fixes on this underway.)

The absolute path will be saved as an environment variable as $MY_ROOT_BASH_DIR'
in ~/.bashrc.

After running the command mentioned above run
```sh
source ~/.bashrc
```

For future use verify that your terminal runs ~/.bashrc.

#### Linux:

Future Todo

#### Windows:

Future Todo

## Usage example

Commands

*

## Release History
* 0.0.1
    * Work in progress

## Meta

Scott Blanch – [@scottglenblanch](https://twitter.com/scottglenblanch) – scottglenblanch@gmail.com

Distributed under the MIT license. See ``LICENSE`` for more information.

[https://github.com/scottglenblanch/project-based-bashing](https://github.com/scottglenblanch/)

## Contributing

1. Fork it (<https://github.com/scottglenblanch/initialize-base-scripts/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request

## Special Thanks
Special Thanks to [@wcspcbmt](https://github.com/wcspcbmt) for teaching me bash. My eyes have been opened to the power of the terminal.
