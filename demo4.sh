#!/bin/bash

# promting for user input is done with read -p 'Text prompt' VARIABLE NAME

read -p 'Give me your credit card number ' CC_NUMBER

read -p 'Expiration date queen? ' CC_EXP

read -p 'Funny number behind the card please ' CC_CVV

echo "${CC_NUMBER} ${CC_EXP} ${CC_CVV}"