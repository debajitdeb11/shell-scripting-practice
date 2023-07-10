#!/bin/bash

echo "Simple calculator which accepts two numbers x & y"
echo "and performs operations: sum or subtract"

echo "Enter the value of x: "
read X

echo "Enter the value of y: "
read Y

echo "What operation do you want to perform?"
echo "1. Add(A)"
echo "2. Subtract(S)"

FLAG=1

while [ $FLAG -eq 1 ]; do
	read OPERATION

	if [[ $OPERATION == "A" || $OPERATION == "a" ]]; then
		echo $(($X + $Y))
		FLAG=0
	elif [[ $OPERATION == "S" || $OPERATION == "s" ]]; then
		echo $(($X - $Y))
		FLAG=0
	else
		echo "Invalid operation. Please try again!"
	fi
done

echo "Goodbye!"
