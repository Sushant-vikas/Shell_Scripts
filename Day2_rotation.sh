#!/bin/bash
#
#Your task is to create a bash script that takes a directory path as a command-line argument and performs a backup of the directory. The script should create timestamped backup folders and copy all the files from the specified directory into the backup folder.

#Additionally, the script should implement a rotation mechanism to keep only the last 3 backups. This means that if there are more than 3 backup folders, the oldest backup folders should be removed to ensure only the most recent backups are retained.
#
#check if  a directory path is provided as a command line argument

if [[ $# -ne 1 ]]; then
	echo "Usage: $0 <Directory path>"
	exit 1
fi

#get the specified directory path from the user
directory_path="$1"

#Function t0 create a timestamped backup folder
create_backup_folder() {
	local timestamp=$(date +'%Y-%m-%d_%H-%M-%S')
	local backup_folder="${directory_path}/backup_${timestamp}"
	mkdir "$backup_folder"
	echo "$backup_folder"

}

#Function to remove the oldest backup folders if more than 3 backup exist
remove_old_backup() {
	local backup_folders=("Directory_path"/backup_*)
	local num_backups="${#backup_folders[@]}"

	#check if number of backup is greater than 3
	if [[ $num_backups -gt 3 ]]; then
		#sort the backup folders based on their creation time (oldest first)
		#and remove the excess one (leaving the last 3 backups)
		sorted_backups=($(print '%s\n' "$backup_folders[@]" | sort))
		backup_to_remove=("${sorted_backups[@]:0:$((num_backups-3))}")

		for backup_to_remove in "${backups_to_remove[@]}"; do					
			echo "Removing old backup: $backup_to_remove"
			rm -rf "$backup_to_remove"
		done
	fi

}
#create the backup folder
backup_folder=$(create_backup_folder)

#copy all the files from the specified directory to the backup folder
cp -R "$directory_path"/* "$backup_folder"
echo "Backup created: %backup_folder"

#Remove the oldest backups to keep only the last 3 backups
remove_old_backups







