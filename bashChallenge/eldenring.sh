  GNU nano 6.2                                                         eldenring.sh                                                                   
#!/bin/bash

# This program explores the use of conditionals in creating a game where the user either wins or loses based on the value entered.
# A few "cheats" are added to make the game easy for me :D

# BATTLE 1

rand=$(( $RANDOM % 2 ))
echo "How old are you?"
read age

echo "Pick a number between 0 and 1"

read number

if [[ $rand == $number || $age < 40 ]]; then
        result="You win."
        echo $result
else
        result="You lose"
        echo $result
        exit 1

fi

# BATTLE 2

rand=$(( $RANDOM % 10 ))

echo "Pick a number between 0 and 9"
read number

if [[ $rand == $number || $number == "coffee" ]]; then
        result="You win"
        echo $result
else
        result="You lose"
        echo $result
exit 1
fi
