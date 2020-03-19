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
compute=`echo "scale=2 ; $a+$b*$c" | bc -l`
echo $compute
compute1=`echo "scale=2 ; $a*$b+$c" | bc -l`
echo $compute1


