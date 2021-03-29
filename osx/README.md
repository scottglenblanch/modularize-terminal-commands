# Os X/Mac Setup

```sh
git clone git@github.com:scottglenblanch/project-based-bashing.git
chmod -R +x ./modularize-terminal-commands/osx  
./modularize-terminal-commands/osx/initialize
```

The initialize script will ask where you want the root bash directory to be.

Input this using the absolute path. (As of right now it won't work with the `~` for $HOME path. Fixes on this underway.)

The absolute path will be saved as an environment variable as $MY_ROOT_BASH_DIR' in ~/.bashrc.

After running the command mentioned above run
```sh
source ~/.bashrc
```

Also verify that your terminal runs ~/.bashrc on startup. The file ~/.bashrc needs to run in order to hook everything up. 
