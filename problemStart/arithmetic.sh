#!/bin/bash -x
#DISPLAY THE WELCOME STATEMENT
echo "Welcome to the Arithmetic Computation Sorting"
#TAKING THREE INPUT FROM USER
echo "Enter the first input"
read a
echo "Enter the second input"
read b
echo "Enter the third input"
read c
declare -A arithmeticDictionary
#COMPUTE THE NUMBER AND STORE THE DICTIONARY
compute=`echo "scale=2 ; $a+$b*$c" | bc -l`
arithmeticDictionary[1]="$compute"
compute1=`echo "scale=2 ; $a*$b+$c" | bc -l`
arithmeticDictionary[2]="$compute1"
compute2=`echo "scale=2 ; $a+$b/$c" | bc -l`
arithmeticDictionary[3]="$compute2"
compute3=`echo "scale=2 ; $a%$b+$c" | bc -l`
arithmeticDictionary[4]="$compute3"
#STORE THE ELEMENT OF DICTIONARY IN ARRAY
for value in ${!arithmeticDictionary[@]}
do 
	 echo arithmeticArray[$value]="${arithmeticDictionary[$value]}"
done

