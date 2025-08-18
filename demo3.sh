#!/bin/bash

echo "Your UID is ${UID}"

# 501 is the local user on this machine only, "hylan"
HYLAN_ID=501

# the exit command ends the current block
if [[ "${UID}" -ne "${HYLAN_ID}" ]]
then
  echo "You are not hylan!"
  exit 1
else
  echo "Welcome $(whoami)"
fi

# the variable ${?} saves the latest exit status
echo "${?}"

#exiting without specifying a number will return the latest exit status
exit 0

#standard is 0 for no error anything else for error messages