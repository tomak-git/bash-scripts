#!/bin/bash

# This script joins all lines in a markdown file while preserving
# paragraphs and treating blockquotes appropriately

echo -n "Hello handsome, please enter the absolute path and press [ENTER]: "
read -e file

n='^.+$'
e='^ '
z='^> '
p='> '

# join nonblank lines and save to buff2
while read line
  do
    if [[ ${line} =~ $n ]]
    then
       buff1="$buff1 $line"
    else
       buff1="$buff1\n\n"
    fi
  done < $file

buff2=$(echo -e "$buff1")

# delete spaces at the beginning of lines and save to buff4
while read line
  do
    if [[ ${line} =~ $n ]]
    then
      line1=${line/$e/}
      buff3="$buff3$line1"
    else
      buff3="$buff3\n\n"
    fi
  done <<< "$buff2"

buff4=$(echo -e "$buff3")

# leave blockquote marks only at the beginning of a line and save to buff5
while read line
  do
    if [[ ${line} =~ $z ]]
    then
      line2=${line//$p/}
      line3="> $line2"
      buff5="$buff5\n$line3"
    else
      buff5="$buff5\n$line"
    fi
  done <<< "$buff4"

# make the resulting file not begin with newline
buff6=${buff5/\\n/}

# uncomment the end of the following line to write the changes into the
# original file
echo -e "$buff6" #> $file
