#!/usr/bin/env bash
#
# Prints numbers between 1 and 50.
# https://www.hackerrank.com/challenges/bash-tutorials---looping-with-numbers

for i in {1..50}; 
do
    echo $i
done


# It can also be done as:
# for ((i = 1; i <= 50; i = i + 1))
# do
#     echo $i
# done
