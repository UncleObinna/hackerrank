#!/bin/bash

# Given two integers (X and Y), finds their sum, difference, product and quotient.
# https://www.hackerrank.com/challenges/bash-tutorials---the-world-of-numbers


read X
read Y

echo "$(($X + $Y))"
echo "$(($X - $Y))"
echo "$(($X * $Y))"
echo "$(($X / $Y))"
