#!/bin/bash

var=1
echo "Value of var = $var"	# Variable value is referenced by dollar-sgn ($)

echo "______________________________"
echo " "

unset var		# Will 'unset' the value of var..i.e. null
echo "Value of var = $var"

echo "______________________________"
echo " "

var1=10
(( y=var1<20?1:0))	# No need for $ here
echo "Value of y = $y"

echo "______________________________"
echo " "

for i in 1 2 3
do
	echo "Value of i = $i"
done
