#!/bin/bash
if [ "$1" == "" ];
then
  echo '1st parameter needs to be name of command'
  exit 1
fi

nameOfFile=$1
echo '#!/bin/bash' > $nameOfFile
vim $nameOfFile
link $nameOfFile $HOME_BIN/$nameOfFile
chmod +x $nameOfFile
