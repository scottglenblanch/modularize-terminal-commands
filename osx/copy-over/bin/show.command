#!/bin/bash
COMMAND_NAME="$1"

if [ -z "${COMMAND_NAME}" ]
then
	echo "Needs a command name as input"
	exit 1
fi


less "${MY_ROOT_BIN_DIR}/${COMMAND_NAME}"
