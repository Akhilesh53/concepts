#!/bin/bash

echo "Enter a number: "
read number1

echo "Enter another number: "
read number2

if [ $number1 -eq $number2 ]
then
    echo "The numbers are equal"
else
    echo "The numbers are not equal"
fi

#multiply two numbers
result=$((number1 * number2))
echo "The product of the two numbers is: $result"
