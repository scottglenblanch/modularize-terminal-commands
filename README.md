# Modularize Terminal Commands
Aides in creating and encapsulating scripts per project. Scripts will be located in both the project directory
as well as in global bash directory, aka environment variable `MY_ROOT_BASH_DIR`.

## Overview
Scripts generated will be nested within the project folder as well
as in the '$MY_ROOT_BASH_DIR' bash scripts folder. The location of
'$MY_ROOT_BASH_DIR' is determined during installation.

## Support

### Script Interpreters
Current support
- BASH (Bourne Again Shell)
    - OsX and Linux
- Powershell
    - Windows 10

## Installation

[MacOSX Readme](./osx/README.md)

[Windows Readme](./windows/README.md)


#### Linux:

Future Todo

#### Windows:

Future Todo

## Usage example

Commands

* create.bash.setup.for.project
* delete.bash.setup.for.project
* create.global.command
* create.command
* {project name}.create.command 
* trash
* take.out.trash
* trash.dumpster.diving
* editor
* start.day
* end.day

## Release History
* 0.0.3
    * Added Powershell scripts for Windows
* 0.0.2
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
Special Thanks to [@wcspcbmt](https://github.com/wcspcbmt) for teaching me bash. 

Special Thanks to [@Nr1cha](https://github.com/Nr1cha) for getting me involved with Powershell.

My eyes have been opened to the power of the terminal.