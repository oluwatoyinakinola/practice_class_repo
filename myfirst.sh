#! /bin/bash

#role="COO"

#my_name="Emmanuel"

#echo "My name is ${my_name}, and my role is ${role}"

#first_name="John"
#last_name="Doe"

#fullname="${first_name} ${last_name}"

#echo $fullname
#num1=4
#num2=6

#sumUp=$(expr $num1 / $num2)

#echo $sumUp

#counter=0

#echo $counter

#counter=$(($counter + 1))

#echo $counter

#if [ $age -lt 18 ]; then 
#	echo "You don't qualify to be here"
#elif [ $age -eq 18 ]; then
#	echo "You just clocked 18"
#else
#	echo "You qualify to be here"
#fi


#echo "backup has started..."

#tar -czvf /home/emmao/backup.tar.gz /home/emmao

#echo "Backup completed successfully.."

read -p "Enter a directory path without the end slash: " directory
read -p "Full File Name: " file_name

for file in "$directory"/*; do
#	echo "${directory}/${file_name} New Created"

	if [ $file == "${directory}/${file_name}" ]; then
		#echo $file
		if [ -e $file ]; then
			echo "File: $file exists--"
			if [ -s $file ]; then
				echo "This file has content"
				if [ -x $file ] &&
				[ -w $file ] &&
				[ -r $file ]; then
					echo "This file has full Permission"
				elif [ -r $file ] &&
				[ -w $file ]; then
					echo "This file has Read and Write Permission"
				elif [ -r $file ] &&
				[ -x $file ]; then
					echo "This file has Read and Execute Permission"
				elif [ -x $file ] &&
				[ -w $file ]; then
					echo "This file has Execute and Write Permission"
				elif [ -r $file ]; then
					echo "This file has Read Permission only"
				elif [ -w $file ]; then
					echo "This file has Write Permission only"
				else
					echo "This file has Execute Permission only"
				fi
			else
				echo "File has no content"
			fi
		else
			echo "File: $file does not exist"
		fi

	fi
done
