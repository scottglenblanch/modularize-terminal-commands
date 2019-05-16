#!/bin/bash
if [ "$1" == "" ] ;
then
  echo '1st parameter needs to be name of command'
  exit 1
fi

nameOfFile=$1

rm ./$nameOfFile
rm $HOME/bin/$nameOfFile

echo 'deleted command '$nameOfFile
