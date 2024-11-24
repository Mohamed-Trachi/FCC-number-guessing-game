#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t -q --no-align -c"

SECRET_NUMBER=$((1 + $RANDOM % 1000))

echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "select user_id from users where name='$USERNAME';")

if [[ -z $USER_ID ]]
then
  $PSQL "insert into users (name) values ('$USERNAME');"
  USER_ID=$($PSQL "select user_id from users where name='$USERNAME';")
  echo Welcome, $USERNAME! It looks like this is your first time here.
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id=$USER_ID;")
  BEST_GAME=$($PSQL "SELECT MIN(score) FROM games WHERE user_id=$USER_ID;")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

USER_GUESS=0
NUMBER_OF_GUESSES=0
echo "Guess the secret number between 1 and 1000:"

while [[ $USER_GUESS -ne $SECRET_NUMBER ]]
do
  read USER_GUESS
  re='^[0-9]+$'
  if ! [[ $USER_GUESS =~ $re ]]
  then
    echo "That is not an integer, guess again:"
    continue
  fi
  ((NUMBER_OF_GUESSES++))
  if [[ $USER_GUESS -gt $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
  elif [[ $USER_GUESS -lt $SECRET_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
  fi
done

$PSQL "INSERT INTO games(score, user_id) VALUES($NUMBER_OF_GUESSES, $USER_ID);"
echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
