#!/bin/bash

# you can get arguments passed into the script using the variables ${n} where n is the number (starting at 0)
echo "Param 1 ${1}"
echo "Param 2 ${2}"
echo "Param 3 ${3}"

# true and false are progrms that will return exit status 0(true) and 1(false)
# remember exit status 0 is good
# while loops have the following sintax
# while [[CONDITION]]
# do {something}
# done
# shift removes the first argument (${1}) passed into the script and shifts all arguments down by 1
# eg ${2} becomes ${1}
while [[ "${#}" -gt 0 ]] #iterates through each parameter
do
  echo "${1}" #only need to print ${1} as shift will move the next argument into it
  shift
done