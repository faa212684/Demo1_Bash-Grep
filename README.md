# Demo1_Bash-Grep
Team 1 Digital Forensics Bash/Grep Demo

![Image of Bash](https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSl2XOHuRidAitUaaEfkehZ7QN9xcub-4r0eg&usqp=CAU) <br />
Picture Source: https://bashlogo.com/

Group Members:
* ![profile](https://avatars2.githubusercontent.com/u/42753502?s=64&v=4)  Dustin Potter
* <img src="https://avatars2.githubusercontent.com/u/42812591?s=400&u=7cf013ebb02d82955c1a2936d370a6233c2c9628&v=4" with=75 height=75> Elliott Tuttle
* <img src="https://avatars0.githubusercontent.com/u/59935321?s=400&u=38b9e12464ae119af990b17d4fa4d0114c91c046&v" with=75 height=75> Kyle Shaw
* Brady Nelson

Sub-Topics:
* Pattern Matching Using Grep - Dustin
* Globbing - Kyle
* Accessessing Windows Files in Bash - Elliott

## Grep - Global Regular Expression Print

The grep command is a Linux/Unix tool to search for a string or pattern in a file. The string or pattern that is the target of the search is called a regular expression. This basic expression is then searched for in the specified files. After the search is complete, the grep command returns the line of the file that contained the search criteria.

![Demo](https://github.com/dpott60/Demo1_Bash-Grep/blob/main/demo.PNG)

The grep tool has many operators that display a variety of results and affect different options for searching.
Here are some of common operators for the grep tool:
* -w 
  - When this is added to the grep command, the results will be the whole word itself and the file it was found. This means that searching for a substring will not produce any results unless that substring is also a whole word.
  - Example: grep -w is *
* -i
  - This operator ignores the case-sensitive search results and prints all results either lower or uppercase.
  - Example: grep -i hello *
* -r
  - The r operator broadens the search to files that are located in subdirectories of our current directory we are searching in. This also means that the results printed contain the path with the file name if they are from the subdirectory.
  - Example: grep -r This *
* -v
  - Unlike the original method of searching, this operator finds all lines that do not match the search criteria
  - Example: grep -v e example.txt
* -l
  - This operator ignores the resulting line contents and only returns the names of the files where the match occured.
  - Example: grep -l is *
* -c
  - When the c operator is used, the search results also do not contain the line contents. Instead, this operator counts the number of lines of each file that matches the search criteria.
  - Example: grep -c hello *

We can even combine operators to refine our searches further and use the grep command to it's full potential.
Examples:
* grep -rlw is * - searches for all files as well as files in any subdirectories, that contain the word is.
* grep -lvw This * - searches for all files in the current directory who do not contain the word This.

Sources for Grep Project:
* https://phoenixnap.com/kb/grep-command-linux-unix-examples
* http://linuxcommand.org/lc3_man_pages/grep1.html

Demonstration Video: https://use.vg/bbvIvz



-------------------------------------------------------------------------------------------------------------------------------------------------------------




## Bash - Globbing in Bash

Bash does not natively support regular expressions like other programming languages. The Bash shell features a unique tool for matching or expanding specific types of patterns and this tool is called globbing. Globbling is mainly used when trying to match filenames or searching for content in a file. This demmo will teach you about the specific wildcard characters that are used to create the patterns needed.

* Question Mmark - (?)
  - The question mark is used when you are trying to match a single character. It can be used multiple times for multiple characers but you have to know how many characters you need.
  - Example 1: Lets say you know that the file you are looking for has 4 letters in it and is also a doc file. You can use the command ls -l ????.docx to find everything in the file that is has for letters and is a doc.

* Asterisk - (*)
  - The Asterisk character is used to match zero or more charactes. This is useful if you have less info to seach by in a file.
  - Example 1: Let's say that I know the file I am looking for is a .txt file but I don't know anything else about it so I would use the comand ls -l *.txt to get all of the txt files into a list.
  
* Square Brackets -([])
  - The square brackets are sued to mach a chracter from a specific range.
  - Example 1: Lets say you know that you are looking for HarryPotter books 1 - 5 but don't know if you have all of them. Run ls -l HarryPotter[1-5].docx to try and find them.
  
* Exclamation sign - (!)
  - The exlamation sign is used along with the square brackest, inside of them, to try to find contents within a file that start with a certian character.
  - Example 1: Lets say we have a file called students.txt with a list of students in the class. If we want to find all the students with names that start with A, B, or C the you can use the command grep [!A-C] students.txt to find them.
  
* Caret -(^)
  - the caret is also used with the square brackets but this time out side of them. The caret has the exact same functions as the exclimation sign.
  - Example 1: Lets just use the same example as the exclamation sign then and try to find all the students with names that start with A, B, or C. This time you can use the command grep '^[A-C]' students.txt to find them.
  
My sources are:
* https://www.youtube.com/watch?v=hQyXuuBbCOo
* https://linuxhint.com/bash_globbing_tutorial/
  
  


-------------------------------------------------------------------------------------------------------------------------------------------------------------



## Accessessing Windows Files in Bash

Accessessing Windows Files while using Bash can be useful for multiple reasons.  A simple but very practical use of this is being able to access the files on your system inside of your bash terminal.  This will allow you to reference files in Windows inside the terminal, allowing you to edit files, view files, and work with them.  Bash offers a variety of very powerful and useful tools that you can incorporate with your Windows files.  In order to proceed access your Windows files inside of bash, there is a few things you mush do before hand. 

* First: 
You must start up your Bash Shell.  I will be using Ubuntu for my demonstration 

* Next: You will need to mount your Windows Drive that you want to access in your terminal, such as your C: drive or you D: drive.  
To do this, run the command 
`cd /mnt/` - This will change your directory to "Mount" as mnt stands for Mount

From here, you should/can run `ls`

This should should your drives that you're able to get access to.

`cd c` - This will change your directory to your C Drive

`cd d` - This will change your directory to your D Drive

Now that you're in your Drive, you can run `ls` again to show your files inside the drive, and access them as you need.  

To show your hidden files, you'll want to run the command `ls -la`

From here, you are able to access all of your files via your Bash Operating System.  This will allow you to do a multitude of things, all within your Virtual Machine. 

My sources: 

https://www.how2shout.com/how-to/how-to-access-windows-subsystem-for-linux-from-ubuntu-terminal.html

Source for tools to use while inside your directory:

https://www.ibm.com/support/knowledgecenter/ssw_aix_72/devicemanagement/cmd_display_dir_content.html

My Demonstration Video: 

https://app.vidgrid.com/view/VywadvqF1Zd9
