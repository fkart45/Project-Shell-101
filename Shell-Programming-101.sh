#This script is written to learn, write, test and execute Shell Script. Shell is a program that interprets commands, intereact with Operating System and return output.
#You can run this script on your terminal by using Dash <file_name.sh> command.
#Owner: Github.com/fkart45
#Date: 9.29.2024


#Creating functions
Five_Dots()
{
	Echo '.'
	Echo '.'
	Echo '.'
	Echo '.'
	Echo '.'
}
Print_Text()
{
	Text=$1
	Echo ' '
	Echo $1
	Echo ' '
}


Echo 'Script is running now.'
Five_Dots


#Listing all file in a Directory

Print_Text '[1/n] Listing all files in this directory using % ls:'
ls
Five_Dots

#Creating a Directory

Print_Text '[2/n] Creating a temporary directory using % mkdir <Directory_Name>'
mkdir Temp_Directory
ls
Five_Dots

#Creating files in a Directory

Print_Text '[3/n] Entering in Temp_Directory using % cd Temp_Directory'
cd Temp_Directory
pwd
Echo 'Before files are created'
ls
Echo 'NULL'
Echo 'After files are created'
ni F1.txt
ni F2.txt
ni F3.txt
ls
cd ..
Five_Dots

#Deleting a directory

Print_Text '[4/n] Deleting Temp_Directory now using % rmdir Temp_Directory'
rmdir Temp_Directory
Print_Text 'Listing Files and Folders now using % ls'
ls
Five_Dots


