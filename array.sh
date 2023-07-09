#!/bin/bash

NAME="DEBAJIT DEB"
AGE=25
ROLE="SOFTWARE ENGINEER"

MY_LIST=(${DEBAJIT} ${AGE} ${ROLE})

echo $MY_LIST 		# 1st element of the list

echo ${MY_LIST[@]} 	# Print all element of the list

echo ${MY_LIST[2]}	# 2nd element of the list

echo "--- Thank You! ---"
