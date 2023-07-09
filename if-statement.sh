#!/bin/bash

echo We are testing the IF-Statement now

NAME=$(echo ${1} | tr '[:upper:]' '[:lower:]')

echo The name is ${NAME}

if [ ${NAME} = debajit ]; then
	echo "Oh Welcome ${1} Welcome boss!"
elif [ ${NAME} = bishal ]; then
	echo "Oh! You're using your nickname ${NAME}, but still Welcome"
else
	echo "I don't know who're you!!!, Sorry Access denied"
fi

echo "Script Ends"
