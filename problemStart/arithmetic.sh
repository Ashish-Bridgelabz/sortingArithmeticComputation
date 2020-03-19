#!/bin/bash -x
#print the massage
echo "Welcome the Arithmetic Operation"
#Display the three input
echo "Enter the first input"
read a
echo "Enter the second input"
read b
echo "Enter the third input"
read c
compute=`echo "scale=2 ; $a+$b*$c" | bc -l`
echo $compute
compute1=`echo "scale=2 ; $a*$b+$c" | bc -l`
echo $compute1
compute2=`echo "scale=2 ; $c+$a/$b" | bc -l`
echo $compute2

