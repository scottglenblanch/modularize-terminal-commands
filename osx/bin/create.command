#!/bin/bash
if [ "$1" == "" ];
then
  echo '1st parameter needs to be name of command'
  exit 1
fi

command_name=$1
echo '#!/bin/bash' > $command_name
editor $command_name
link $command_name $MODULAR_BASHING_BIN_DIR/$command_name
chmod +x $command_name
