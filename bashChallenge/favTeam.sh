#!/bin/bash

#
# This program receives an input (favourite football team) from a user, prints out the total number of UCL trophies their team has won, and prints out the last time their team won the UCL 
# within the last 30 years
#

# Get the user's favourite football team.
read -p "What's your favourite football team: " favTeam

# The favTeam is compared to the list of teams that have won the UCL in the last 30 years
case $favTeam in
	[rR]eal\ Madrid | [mM]adrid)
		no_ucl=14
		last_ucl=2022
		;;
	[cC]helsea)
		no_ucl=2
		last_ucl=2021
		;;
	[bB]ayern\ Munchen | [bB]ayern)
		no_ucl=6
		last_ucl=2020
		;;
	[lL]iverpool)
		no_ucl=6
		last_ucl=2019
		;;
        [bB]arcelona | [bB]arca)
                no_ucl=5
                last_ucl=2015
                ;;
        [iI]nter\ Milan | [iI]nter)
                no_ucl=3
                last_ucl=2010
                ;;
        [mM]anchester\ United | [uU]nited | [mM]an\ Utd)
                no_ucl=3
                last_ucl=2008
                ;;
        AC\ Milan | [mM]ilan)
                no_ucl=7
                last_ucl=2007
                ;;
        [pP]orto | FC\ Porto)
                no_ucl=2
                last_ucl=2004
                ;;
        [dD]ortmund)
                no_ucl=1
                last_ucl=1997
                ;;
        [jJ]uventus | [jJ]uve)
                no_ucl=2
                last_ucl=1996
                ;;
        [aA]jax)
                no_ucl=4
                last_ucl=1995
                ;;
        [mM]arseille)
                no_ucl=1
                last_ucl=1993
                ;;
        [rR]ed\ Star)
                no_ucl=1
                last_ucl=1991
                ;;
	*)
		echo "Sorry, your team has not won the UCL in the last 32 years."
		exit
		;;
esac

if [ $no_ucl -gt 1 ]
then
	echo "$favTeam have won $no_ucl UCL titles, and they won their last UCL title in $last_ucl."
else
	echo "$favTeam have won $no_ucl UCL title, and they won their last UCL title in $last_ucl."
fi

# Output to the user
#echo
#echo "$favTeam has won $no_ucl titles and won their last UCL in $last_ucl."
#echo
