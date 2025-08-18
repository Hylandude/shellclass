#!/bin/bash

# using bash lets you access the UID
# this is the userId of who is executing the file
echo "The user ID is ${UID}"
# a list of variables provided by bash can be found by running '$man bash'

# variables can be assigned to values from commands by using two different syntax styles
# using backticks `command`
NAME1=`whoami`
# using $(command)
NAME2=$(id -un)
# these two commands are equivalent
echo "${NAME1} = $NAME2"

# if statements are structured like this
# if [[ STATEMENT ]]
# then
#   logic goes here
# else
#   logic goes here
# fi

# the root user is ALWAYS id 0
if [[ "${UID}" -eq 0 ]]
then
  echo 'root!'
else
  echo 'not root'
fi

