#!/bin/bash

# we can check params with the if statement
if [[ "${1}" = 'start' ]]
then
  echo 'START!'
elif [[ "${1}" = 'stop' ]]
then
  echo 'STOP!'
else
  #send error message to stderr
  echo 'Invalid or no argument' >&2
  # exit 1
fi

# things can be simplified with a case statement
case "${1}" in
  start)  # each statement is provided as a pattern followed by a )
    echo 'START!'
    ;;    # break with ;;
  stop)
    echo 'STOP'
    ;;
  status|state|--s) # the | matches two or more patterns
    echo 'STATUS'
    ;;
  *) # case matches everything
    echo 'Invalid or no argument' >&2
    exit 1
esac #case statement is closed with the word case backwards