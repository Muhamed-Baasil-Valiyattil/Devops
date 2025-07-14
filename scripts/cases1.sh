
#!/bin/bash


read -p "Enter a number : " num1
read -p "Enter another number : " num2

if [[ $num1 -eq $num2 ]]
then
	echo "$num1 equal to $num2"
elif [[ $num1 -gt $num2 ]]
then
	echo "$num1 greater than $num2"
else
	echo "$num1 is less than $num2"
fi
