#!/bin/bash
has_missing_params() {
  command_name="$1"
  if [ "$command_name" == "" ];
  then
    echo "true"
  else
    echo "false"
  fi
}

has_invalid_command_name() {
  command_name="$1"
  command_name_grep="$(ls "$MODULAR_BASHING_BIN_DIR" | grep "^$command_name\$")"

  if [ "$command_name_grep" == "" ];
  then
    echo "true"
  else
    echo "false"
  fi
}

has_needed_inputted_params() {
  if [ "$(has_missing_params "$@")" == "false" ] && [ "$(has_invalid_command_name "$@")" == "false" ];
  then
    echo "true"
  else
    echo "false"
  fi
}

handle_had_needed_inputted_params() {
  command_name="$1"
  editor "$MODULAR_BASHING_BIN_DIR/$command_name"
}

handle_has_missing_params() {
  echo "1st param is required. It's the name of the command"
}

handle_has_invalid_command_name() {
  command_name="$1"
  echo "$command_name not found in $MODULAR_BASHING_BIN_DIR"
}

run_script() {
  if [ "$(has_needed_inputted_params "$@")" == "true" ];
  then
    handle_had_needed_inputted_params "$@"
  elif [ "$(has_missing_params "$@")" == "true" ];
  then
    handle_has_missing_params
  elif [ "$(has_invalid_command_name "$@")" == "true" ];
  then
    handle_has_invalid_command_name "$@"
  else
    echo "case not covered in my.edit.command"
  fi
}

run_script "$@"
