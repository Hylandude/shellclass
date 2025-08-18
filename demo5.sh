#!/bin/bash

# RANDOM generates a random integer between 0 and 32767
echo ${RANDOM}

# date can be used to acess the current time
echo $(date)
# +%s returns the epoch
echo $(date +%s)
# see 'man date' for extra formatting option

# head returns the first part of a file defaults to 10 lines
# -n defines the amout of lines ex: 'head -n 3' prints the first 3 lines
# -c defines the amount of characters ex: 'head -c 7' prints the first 7 characters

# grabs the date epoch accurate with nanoseconds, gets its sha256 sum and returns the first 16 characters
echo $(date +%s%N | sha256sum | head -c 16)

SPECIAL_CHARACTERS="!#$%&/()?_-{}[]@"

# fold makes an output fits a specific width 
# -w 1 means 1 character per line
# shuf returns a random permutation of lines of its input (sort -R does the same on osx as it is not installed by default)
# prints special charaters, separates them into 1 per line, makes a random permutation, grabs one
# returns one random special character
echo $(echo ${SPECIAL_CHARACTERS} | fold -w1 | sort -R | head -c1)

