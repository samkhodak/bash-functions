#!/bin/bash

# Traverse previous directory n times. 
# For example, | cdn 4 | will take you back 4 directories. 
cdn() {
  # If no arguments, print usage.
  if (( $# == 0 ))
  then
    printf "Usage: cdn <n> \nPurpose: traverse previous directory n times.\n"
    return;
  elif (($# != 1 ))
  then
    printf "Error: Enter 0 arguments for usage, 1 integer argument to traverse.\n"
    return;
  fi

  command="cd "
  for i in $(seq "$1")
  do
    command+="../"
  done

  $command || { printf "cd failed. Make sure to use integers.\n"; return; }
}

export -f cdn
