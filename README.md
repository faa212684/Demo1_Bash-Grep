# Demo1_Bash-Grep
Team 1 Digital Forensics Bash/Grep Demo

![Image of Bash](https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSl2XOHuRidAitUaaEfkehZ7QN9xcub-4r0eg&usqp=CAU) <br />
Picture Source: https://bashlogo.com/

Group Members:
* Dustin Potter
* Elliott Tuttle
* Kyle Shaw
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




