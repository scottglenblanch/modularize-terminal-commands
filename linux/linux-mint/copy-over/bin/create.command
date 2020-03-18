#!/bin/bash
#=============================================
# ${MY_ROOT_BIN_DIR} is required global
#=============================================
source ~/.bash_profile

COMMAND_NAME="${1}"
COMMAND_LOCAL_LOCATION="$(pwd)/${COMMAND_NAME}"
COMMAND_GLOBAL_LOCATION="${MY_ROOT_BIN_DIR}/${COMMAND_NAME}"

# check if has name for input
if [ -z "${COMMAND_NAME}" ]
then
  echo "missing command name in input"
  exit 1
fi

# check if already exists in global bin
if [ -f "${COMMAND_GLOBAL_LOCATION}" ]
then
  echo "${COMMAND_NAME} already exists in" '${MY_ROOT_BIN_DIR} in absolute path' "${COMMAND_GLOBAL_LOCATION}"
  exit 1
fi

# check if alreay exists in local location
if [ -f "${COMMAND_LOCAL_LOCATION}" ]
then
  echo "${COMMAND_NAME} name already exists in local directory ${COMMAND_LOCAL_LOCATION}"
  exit 1
fi

# create command
echo
editor "${COMMAND_LOCAL_LOCATION}"


# if necessary create hard link
[ "${COMMAND_LOCAL_LOCATION}" !=  "${COMMAND_GLOBAL_LOCATION}" ] \
  && ln "${COMMAND_LOCAL_LOCATION}" "${COMMAND_GLOBAL_LOCATION}"

# make executable
chmod +x "${COMMAND_LOCAL_LOCATION}"
