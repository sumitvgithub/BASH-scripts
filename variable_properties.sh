#!/bin/bash

var="t r a la   lala   123  i"
echo $var	# will truncate all whitespace to only 1 whitespace
echo "$var"	# Will preserve whitespace

echo "________________________________________"
echo " "

# Declare all variable in one line but for only numbers, no double/single-quote required but for strings required otherwise will be interpreted as command.

var1=11 var2=22 var3=33
echo "Value of var1 = $var1, Value of var2 = $var2, Value of var3 = $var3"

echo "________________________________________"
echo " "

command=`ls -al`	# Backquotes interpretes as a command
echo "Using backquotes: \`ls -al\`"
echo $command

echo "________________________________________"
echo " "

command=$(ls -al)	# Using () won't interpret as a command but $() will be interpreted as a command because $() reference the (ls -al) command and put its output in variable command. 
echo "Using \$() example->  \$(ls -al)"		# NOTE: \$() means $() itself..written backslash so that not treated as a special character so that I could print onto the terminal console. That's it.
echo $command
