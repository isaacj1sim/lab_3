#!/bin/bash
# Authors : Isaac Sim + Zach Morrissey + Peter Minwegen
# Date : 9/19/2019

#Problem 1 Code:

#ask user to input file name and target expression
echo "Enter a file name: "
read fileName
echo "Enter a regular expression"
read regExp

#search through and print out all lines with target expression
grep $regExp $fileName

#search through and count (three digits 0-9)-(three digits 0-9)-(four digits 0-9)
grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' $fileName

#search through and count all lines with '@'
grep -c '@' $fileName

#print out all lines with 303-(three digits 0-9)-(four digits 0-9)
grep -o '303-[0-9]\{3\}\-[0-9]\{4\}' $fileName

#search and insert all '@geocities.com' emails in email_results.txt
grep '@geocities.com' $fileName >> email_results.txt
