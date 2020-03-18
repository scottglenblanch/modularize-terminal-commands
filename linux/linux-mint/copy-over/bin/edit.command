#!/bin/bash
#=============================================
# ${MY_ROOT_BIN_DIR} is required global
#=============================================

COMMAND_NAME="${1}"
COMMAND_LOCATION=${MY_ROOT_BIN_DIR}/${COMMAND_NAME}

[ -f ${COMMAND_LOCATION} ] && editor ${COMMAND_LOCATION}
