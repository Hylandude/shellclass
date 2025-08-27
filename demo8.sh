#!/bin/bash

# the > is used to redirect the standard output (STDOUT) to a file
FILE_NAME="demo8.testData.txt"
# if the file does not exist > will automatically create it
echo "Hello world" > "${FILE_NAME}"
# if the file does exist the contents will be overwritten
echo "Goodbye cruel world" > "${FILE_NAME}"


# The < is used to redirect the contents of a file into the standard input of a command
read LINE < ${FILE_NAME}
echo "${LINE}"

# use >> to append data to a file instead of overwriting
echo "jk it was just a test" >> "${FILE_NAME}"