#!/bin/bash

# functions can be declared with function_name(){}
# functions can also be declared with the keyword 'function' like so:
# function func_name {}
# functions must be defined before being called

foo() {
  echo 'I pity the foo'
}

# notice that the () are not needed
function bar {
  echo 'I pity the bar'
}

# call the functions simply by typing the name
foo
bar

# variables have scope DO NOT reuse names outside of the scope
scope() {
  # scoped variables are declared with the "local" keyword
  local IM_SCOPED="I live here"
  echo "${IM_SCOPED}"

  # return code, return will end the function
  #exit will end the entire script, use with caution
  return 1
}

# a value will print here
scope
# nothing will print here
echo "${IM_SCOPED}"

# readonly variables cannot be reassigned
readonly JUST_READ="I can't change"

scope
# unless specifically stated the exit status will be the one of the last called function
# ${?} will be 1 here, this is intentional just for demo purposes