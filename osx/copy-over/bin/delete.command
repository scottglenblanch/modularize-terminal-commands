#!/bin/bash
#=============================================
# ${MY_ROOT_BIN_DIR} is required global
#=============================================
COMMAND_NAME=$1

if [ "${COMMAND_NAME}" == "" ] ;
then
  echo '1st parameter needs to be name of command'
  exit 1
fi

# remove local location
rm ./$COMMAND_NAME
rm ${MY_ROOT_BIN_DIR}/${COMMAND_NAME}

echo 'deleted command '$COMMAND_NAME
