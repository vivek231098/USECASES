#!/bin/bash -x
read -p "Enter first number" a
read -p "enter second number" b
read -p "Enter third number" c

first=$(($a+($b*$c)))
second=$((($a*$b)+$c))
third=$(($c+($a/$b)))
fourth=$((($a%$b)+$c))

decare -A Arithmetic
Arithmetic[1]=$first
Arithmetic[2]=$second
Arithmetic[3]=$third
Arithmetic[4]=$fourth

for (( i=1; i<=${#Arithmetic[@]}; i++ ))
do
	array[$i]=${Arithmetic[$i]}
done

echo "Descending order"
echo ${array[a]} | sort -nr
