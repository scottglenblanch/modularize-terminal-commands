#!/bin/bash

SCRIPT_PATH_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
MY_ROOT_BASH_DIR="${HOME}/test-root-dir"
# =======================================
# copy over bash scripts to ROOT_BASH_DIR
# =======================================
DIR_NAME_LIST=()
DIR_NAME_LIST+=('aliases')
DIR_NAME_LIST+=('autocomplete')
DIR_NAME_LIST+=('bin')
DIR_NAME_LIST+=('envvars')
DIR_NAME_LIST+=('templates')

for DIR_NAME in ${DIR_NAME_LIST[@]}
do
  COPY_FROM="${SCRIPT_PATH_DIR}/copy-over/${DIR_NAME}"
  COPY_TO=${MY_ROOT_BASH_DIR}/${DIR_NAME}

  mkdir -p "${COPY_TO}"
  cp "${COPY_FROM}"/* "${COPY_TO}"
done
