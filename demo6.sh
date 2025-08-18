#!/bin/bash

# you can get arguments passed into the script using the variables ${n} where n is the number (starting at 0)
# the argument at postion 0 is always the path to the executed script
echo "${0}"

# dirname returns the directory
# basename returns the name of the file
echo "Running $(basename ${0}) from: $(dirname ${0})"

# @ returns a list of all the arguments into
# * flattens the arguments into a single string
# both ignore the path argument (0)
# # returns the amount of arguments in the script
NUMBER_OF_ARGUMENTS="${#}"
echo "Supplied ${NUMBER_OF_ARGUMENTS} arguments which are: '${*}'"

#for loops can be ran on a list
for ARGUMENT_NAME in "${@}"
do
  echo "The argument is: ${ARGUMENT_NAME}"
done