#!/bin/bash

var=10

if [[ $var != 20 ]]
then
	echo "NOT"
else
	echo "EQUAL"
fi

echo "_______________________________________"

var1=100

echo $(( var2 = var1<12?1:0 ))
