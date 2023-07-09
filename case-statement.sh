#!/bin/bash

echo "Welcome to Case statement Syntax"

echo "Enter the user type"

read INPUT

TYPE=$(echo ${INPUT} | tr '[:upper:]' '[:lower:]')

case $TYPE in
	"administrator" | "admin")
		echo "Hi Admin, Welcome to system control"
		;;
	"guest")
		echo "Hi Guest!, You just have a basic control"
		;;
	*)
		echo "Invalid Option"
		;;
esac

echo "Your input was ${TYPE}"

