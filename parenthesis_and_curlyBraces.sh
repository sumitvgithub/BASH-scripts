#!/bin/bash

# ----------------
# Parenthesis	 |
# ----------------

# () -> parenthesis.A group of commands inside of it will start a subshell and the variables inside if it cannot be read by the script.

var=5
(var=10)

echo "Value of var = $var"		# Will print 5 and not 10 since variables inside () , i.e. (var=10;) will not be read by script

echo "_________________________________________________"

# -----------------
#  Curly Braces	  |
# -----------------

# Example 1
# Consider two files, testFile01 and testFile02 already. Below command would output the contents of testFile01 and testFile02 one-after-another and redirect them to test00 as a single content.
cat {testFile01,testFile02} > test00

echo "Contents of testFile01"
cat testFile01
echo " "

echo "Contents of testFile02"
cat testFile02
echo " "

echo "Contents of test00 will be concat of testFile01 and testFile02:"
cat test00
echo " "

echo "-------------"
# Example 2
echo \${test1,test2,test3}\"	# Would print $test1" $test2" $test3"
				# Escaped dollar-sign ($) and double-quotes ("). Hence, would print every word starting with $ and ending with "

echo " "

echo "--------------"
# Example 3
# Loop from 0-9 inclusive 
echo "Loop from 0-9 inclusive without using for loop"
echo {0..9}

echo "--------------"
#Examlpe 4
# {} can be used as to represent as block of code, called "anonymous function". For example, variables can be visible to the script

var1=1
var2=2

#Using curly braces below:
{
var1=11
var2=12
}

echo "Value of var1 = $var1"	# Would print 11
echo "Value of var2 = $var2"	# Would print 12 since {} preserves what's written inside it
