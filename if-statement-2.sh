#!/bin/bash

echo "Testing if statement logic"

echo "Choice: \n \
	1: Name \n \
	2: Age \n \
	3: Address \n \
	4: Profession \n \
"

read VALUE

if [ ${VALUE} = 1 ]; then
	echo "Debajit Deb"
elif [ ${VALUE} = 2 ]; then
	echo "25"
elif [ ${VALUE} = 3 ]; then
	echo "\
1st Floor, Basanti Residency, Kalimohan Road \n\
Tarapur, Silchar-3, Assam, 788003 \n\
India \n\
"
elif [ ${VALUE} = 4 ]; then
	echo "Software Engineer II"
else
	echo "Invalid Choice"
fi

echo " --- Thank You --- "
