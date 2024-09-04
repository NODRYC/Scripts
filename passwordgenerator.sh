#!/bin/bash

#Simple Password Generator

echo "This is a simple password generator"
echo "Please enter the length of the password: "
read PASS_LENGTH

echo "Enter number of passwords to generate: "
read FREQ

echo "Here are some options: "
for p in $(seq $FREQ); 
do 
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH

done

