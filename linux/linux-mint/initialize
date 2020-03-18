#!/bin/bash

CUR_DIR="$(pwd)"
SCRIPT_PATH_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


# =======================================
# ask for ROOT_BASH_DIR
# =======================================
echo "What is the path (absolute format) you want these bash scripts in?" \
  "Default is current location at ${CUR_DIR}"

read USER_INPUT

if [ -z "${USER_INPUT}" ]
then
  MY_ROOT_BASH_DIR="${CUR_DIR}"
else
  MY_ROOT_BASH_DIR="${USER_INPUT}"
fi

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

# =======================================
# add to ~/.bashrc
# =======================================
echo "export MY_ROOT_BASH_DIR=${MY_ROOT_BASH_DIR}" >> $HOME/.bashrc
echo 'source ${MY_ROOT_BASH_DIR}/bin/setup.shell' >> $HOME/.bashrc
