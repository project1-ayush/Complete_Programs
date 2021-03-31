#!/bin/bash -x

read -p "Enter first number:" num1
echo $num1

read -p "Enter first number:" num2
echo $num2

#VARIABLES
num=0;

on=$num1


function checkPalindrome() {

while [ $num1 -gt 0 ]
do
		num=$(expr $num \* 10)
		k=$(expr $num1 % 10)
		num=$(expr $num + $k)
		num1=$(expr $num1 / 10)
done

if [ $num -eq $num2 ]
then
		echo "Palindrome"
else
		echo "Not Palindrome"
fi

}

result="$( checkPalindrome $((num1)))"



