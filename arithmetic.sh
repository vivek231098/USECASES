#!/bin/bash -x
read -p "Enter first number" a
read -p "enter second number" b
read -p "Enter third number" c

first=$(($a+($b*$c)))
second=$((($a*$b)+$c))
