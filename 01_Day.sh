#!/bin/bash
#
#Task1: Comments
#In bash scripts, comments are used to add explanatory notes or disable certain lines of code. Your task is to create a bash script with comments explaining what the script does.
#
#This is comment for shell scripting
#This is Day 1 of shell script challenge
#
#Task2: Use of Echo command
#The echo command is used to display messages on the terminal. Your task is to create a bash script that uses echo to print a message of your choice
#
echo "Hi, I am a Devops Engineer.."
echo "My name is Sushant"


#Task3: Use of Variables
#Variables in bash are used to store data and can be referenced by their name. Your task is to create a bash script that declares variables and assigns values to them.
#
num1=100
num2=200
name="Sushant"
Role="Devops Engineer"
echo "Value of num1: $num1"
echo "Value of num2: $num2"
echo "Name is: $name"
echo "Role of $name is $Role"

#Task 4: Sum Using Variables
#Now that you have declared variables, let's use them to perform a simple task. Create a bash script that takes two variables (numbers) as input and prints their sum using those variables.
#
echo "enter first number"
read num1
echo "enter second number"
read num2
sum=$(($num1 + $num2))
echo "Sum is $sum"
mul=$(($num1 * $num2))
echo "Multiplication is $mul"


#Task 5: Using built-in variables
#Bash provides several built-in variables that hold useful information. Your task is to create a bash script that utilizes at least three different built-in variables to display relevant information.
#
echo "My home dorectory- $HOME"
echo "My current workint directory- $PWD"
echo "what is current path- $PATH"
echo "My Hostname- $HOSTNAME"


#task 6: Using wildcards
#Wildcards are special characters used to perform pattern matching when working with files. Your task is to create a bash script that utilizes wildcards to list all the files with a specific extension in a directory.
#
echo "files with .txt and .sh extension in the present directory are"
ls *.txt
ls *.sh
