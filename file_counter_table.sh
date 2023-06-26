#!/bin/bash

declare -A counter_array

#setting up for loop for each letter
for letter in {a..z}; do
  counter_array["$letter"]=0
done


for command in /bin/*; do

  first_char=$(basename "$command" | cut -c 1)

  #if statement to break it apart
  if [[ $first_char =~ ^[a-z]$ ]]; then
    counter_array["$first_char"]=$((counter_array["$first_char"] + 1))
  fi
done
#for loop for prinint the information
for letter in {a..z}; do
  echo "$letter ${counter_array["$letter"]}"
done

