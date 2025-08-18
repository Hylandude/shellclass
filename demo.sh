#!/bin/bash

# chmod 755 [file] will allow execute permisions to current user

# comments are stated using a #
echo 'Basic demo script'
echo 'Echo will print to console'

# variables are declared as key-value pairs
# variables cannot start with digits
# variables can contain A-Z a-z 0-9 and _
# convention dictates variables are in uppercase only
# no spaces in between assignment
SOMEVALUE='data goes here'

# references to variables require a $
echo '$SOMEVALUE'
# single quotes will not allow expanding/interpretation of variables
# use double quotes
echo "$SOMEVALUE"

# alternatively use ${VARIABLE_NAME} to delimit the variable
echo "some data is here and ${SOMEVALUE}"
# or to use multiple variables
TEXT='comes out there'

echo "${SOMEVALUE} and ${TEXT}"

#variables can be reassigned the same way they were assigned
TEXT='it can get lost somewhere'

echo "${SOMEVALUE} and ${TEXT}"