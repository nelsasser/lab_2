#!/bin/bash
# Authors : Nicholas Elsasser
# Date: 1/31/2019

# Problem 1 Code:

# execute user command
echo "Enter regex: "
read regx
echo "Enter filename"
read filename
grep $regx $filename

# count number of phone numbers in regex_practice.txt
# grep -c counts lines that match
# needs -oP for some reason
grep -oP -c '\d{3}[-]\d{3}[-]\d{4}.*' regex_practice.txt

# count emails
grep -oP -c '[a-zA-Z0-9]+[@][a-zA-Z0-9]+[.][a-zA-Z0-9]+' regex_practice.txt\

# phone numbers starting with '303'
grep -oP '^303[-]\d{3}[-]\d{4}.*' regex_practice.txt > phone_results.txt

# emails ending with 'geocities.com'
grep -oP '[a-zA-Z0-9]+[@]geocities.com$' regex_practice.txt > email_results.txt

grep $regx regex_practice.txt > command_results.txt