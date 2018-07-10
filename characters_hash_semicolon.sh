#!/bin/bash

name=tea

echo "The word $name contains ${#name} characters."
echo "The Binary of 111 is $((2#111))"	# Binary of 111 is 7. will print 7

var=10

if [ $var -gt 0 ]; then echo "YES"; else echo "NO";fi

echo "_____________________________________________"

colors="red black white"

for col in "$colors"
do
	echo $col	# Would print -> red black white
done

echo "_____________________________________________"

# Notice that in above code "$colors", everthing in the string colors would be printed on the same line, giving col="red black white" as a single string....But in below for loop, red,black,white would be printed on different lines giving col=red, col=black, col=white
for col in $colors
do
	echo $col	# Would print -> red
			#		black
			#		white
done

echo "_____________________________________________"

# Single-quote like '$colors' takes the $colors literally and won't reference the variable colors as shown below in for loop. 
for col in '$colors'
do
	echo $col	# Would print -> $colors
done

echo "_____________________________________________"

# Variable arithmetic using let and 

let "y=((x=20, 10/5))"		# Putting double quotes since it enables to evaluate what's inside unlike single quotes which takes strings literally that's inside single-quote. 
				# 'let' lets you do arithmetic operation on the variables. 
				# Comma separated "," has a special meaning. Comma means that only the last value would be taken into consideration..Here y=10/2 which is y=5.

echo "Value of y = $y"		# Prints 10/5 which is 2.
echo "Value of x = $x"		# Prints 20
echo "______________________________________________"

# Comma separated value
var=DSLCoNnecTioN

echo "Original value of variable  = ${var}"
echo "Only first letter lowercase = ${var,}"			# Un-capitilize first letter of variable var, i.e., dSLCoNnecTioN

echo "All lowercase of variable   = ${var,,}"			# Double comma separted value converts value of variable var to all lowercase, i.e. dslconnection

echo "_______________________________________________"

# Caret separated value
someWord=tEsT

echo "Original value of variable = ${someWord}"
echo "Only first letter uppercase = ${someWord^}"
echo "All uppercase of variable someWord = ${someWord^^}"
