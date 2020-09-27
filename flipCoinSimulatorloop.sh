#!/bin/bash

#Flipping a Coin
#to Display Heads or
#Tails

#getting user input
read -p "Head or Tail (Enter 1.For Heads 2.For Tails) : " userInput;

#checking user value
#and toss value
tossresult=$(($RANDOM%2+1));


#As a simulator, loop through Multiple times of flipping a coin
#and show number of times head and tail has won

for i in {1..10}
do
        function generateRandomValue() {
        case $1 in
                1) generateRandomValue=1;;
                *) generateRandomValue=2;;
        esac
        echo $generateRandomValue;
}
        generatedRandomValue=$( generateRandomValue $((RANDOM%2+1)) );
        if [ $generatedRandomValue == 1 ]
        then
                timesHeadsAppeared=$((timesHeadsAppeared+1));
        else
                timesTailsAppeared=$((timesTailsAppeared+1));
        fi
done
echo $timesHeadsAppeared "Times Head won ";
echo $timesTailsAppeared "Times Tail Won";
