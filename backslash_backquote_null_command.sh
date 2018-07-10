#!/bin/bash

# Backslash ( \ ) : escapes the character right after the backslash
echo ""Linux is Awesome""	# Prints -> Linux is Awesome
echo "\"Linux is Awesome\""	# Prints -> "Linux is Awesome"

echo "_______________________"

# Backquote ( ` ` ) : It enables to execute a command
echo "Current directory files/directories:"
echo `ls`

let val=100/2
val2=`echo $val`
echo "Value of val stored in val2 using backquotes : $val2"

echo "_______________________"

# Null command ( : ) : It means nothing..just like pass in Python

var=10

if [ $var -lt 20 ]
then :			# ":" means nothing. Just like pass in Python
else
	echo "Value is greater than $var"
fi
