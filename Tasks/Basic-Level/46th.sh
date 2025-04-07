#!/bin/bash


echo "Counting down from 10 to 1:"

count=10

while (( count >= 1 )); do
  echo "$count"
  (( count-- ))  # Decrement count
done

echo "Blastoff!"
