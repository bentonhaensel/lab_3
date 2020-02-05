#!/bin/bash
#Authors: Benton Haensel
#Date: 5 February 2020

#problem 1 Code:
echo "Enter the File Name"
read inFile
echo "Enter a regular expression"
read reg
grep $reg $inFile

#problem 3

grep -c [0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9] regex_practice.txt


#problem 4
echo "number of emails in regex"
grep -E -o -c "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}\b" regex_practice.txt
echo "number of phone numbers starting with 303: "
grep -o 303-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9] regex_practice.txt
grep -E -o "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" regex_practice.txt >> email_results.txt
