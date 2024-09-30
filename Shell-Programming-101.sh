#This script is written to learn, write, test and execute Shell Script. Shell is a program that interprets commands, intereact with Operating System and return output.
#You can run this script on your terminal by using Dash <file_name.sh> command.
#Owner: Github.com/fkart45
#Date: 9.29.2024


###---CREATING FUNCTIONS---###

Three_Dots()
{
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
Three_Dots


###---LISTING ALL FILES IN A DIRECTORY---###

Print_Text '[1/n] Listing all files in this directory using % ls:'
ls
Three_Dots

###---CREATING A DIRECTORY---###

Print_Text '[2/n] Creating temporary directory(s) using % mkdir <Directory_Name>'
mkdir Temp_Directory Temp_Directory1 Temp_Directory2
ls
Print_Text '[2/n] Creating more temporary directory(s)'
mkdir "Folder 1" 'Folder 2' Folder\ 3
ls
Three_Dots

###---CREATING FILES IN A DIRECTORY---###

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
Three_Dots

###---DELETING A DIRECTORY---###

Print_Text '[4/n] Deleting Temp_Directory and others using % rmdir Temp_Directory'
rmdir Temp_Directory Temp_Directory1 Temp_Directory2 "Folder 1" 'Folder 2' Folder\ 3
Print_Text 'Listing Files and Folders again using % ls'
ls
Three_Dots

###---CREATING FILES---###

Print_Text '[5/n] Creating a file using % ls > filename.txt'
ls > Output1.txt
Print_Text 'File Output1.txt is created'
Print_Text '[5/n] Creating a file using % echo > filename.txt'
echo "This is first line of Output2.txt file" > Output2.txt
Print_Text 'File Output2.txt is created'
Three_Dots

###---DISPLAYING FILE CONTENT---###

Print_Text '[6/n] Displaying files content using % cat Output1.txt Output2.txt'
cat Output1.txt Output2.txt
Echo ''
Three_Dots
rm Output1.txt Output2.txt

###---PIPING---###

Print_Text '[7/n] Holding data in memory using pipes |'
Print_Text 'Pipes operate entirely in memory, and most Unix command line tools will expect to receive input from a pipe if you don’t specify a file for them to work on. Looking at the line above, you can see that it’s two commands, ls ~ (list the contents of the home directory) and wc -l (count the lines), separated by a vertical bar character (“|”). This process of piping one command into another is so commonly used that the character itself is often referred to as the pipe character, so if you see that term you now know it just means the vertical bar.'
Echo ''
Print_Text 'Get Number of files in a Directory using % ls and pipe | it with other command to do the count of lines using % wc -l'
ls ~| wc -l
Three_Dots

###---CALLING AN API---###


