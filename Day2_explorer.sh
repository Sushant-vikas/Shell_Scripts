#!/bin/bash
#
#After displaying the file and directory list, the script will prompt the user to enter a line of text.

#The script will read the user's input until an empty string is entered (i.e., the user presses Enter without any text).

#For each line of text entered by the user, the script will count the number of characters in that line.

#The character count for each line entered by the user will be displayed.
#
#
#Part1 :File and Directory Exploration
echo "Welcome to the interactive file and Directory explorer"

while true; do
	#list all files and directories in current path
	echo "Files and Directories in the current path: "
	ls -lh
	
	#Ask the user to enter a line of text
	echo -n "Enter a line of text (Press Enter without text to exit): "

	#Read user input into variable 'input'
	read input

	#Check if user entered an empty string (pressed enter without any text"
	if [[ -z $input ]]; then
		echo "Exiting the interactive explorer. Goodbye!! "
		break   #exit the loop if user entered an empty string
	else
		char_count=${#input}
		echo "character count: $char_count"
	fi
done


