#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
NUMBER=$((1+$RANDOM % 1000))
echo $NUMBER
echo -e "\nEnter your username:"
read USERNAME

GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username='$USERNAME'")
BEST_GAME=$($PSQL "SELECT best_game FROM USERS WHERE username='$USERNAME'")
if [[ -z $GAMES_PLAYED ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username,games_played,best_game) VALUES('$USERNAME',0,0)")
else
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

ENTER_GUESS () {
  read GUESS
  while [[ ! $GUESS =~ ^[0-9]+$ ]]
  do 
    echo -e "\nThat is not an integer, guess again:"
    read GUESS
  done
  NR_GUESSES=$((NR_GUESSES + 1))
}

echo -e "\nGuess the secret number between 1 and 1000:"
NR_GUESSES=0
ENTER_GUESS
echo -e $NR_GUESSES

while [[ $GUESS -ne $NUMBER ]]
do
  if [[ $GUESS -lt $NUMBER ]]
  then
    echo -e "\nIt's higher than that, guess again:"
    ENTER_GUESS
  else
    echo -e "\nIt's lower than that, guess again:"
    ENTER_GUESS
  fi
done

echo -e "You guessed it in $NR_GUESSES tries. The secret number was $NUMBER. Nice job!"
UPDATE_GAMES=$($PSQL "UPDATE users SET games_played = games_played + 1 WHERE username='$USERNAME'")

if [[ $BEST_GAME -eq 0 ]]
then
  UPDATE_BEST=$($PSQL "UPDATE users SET best_game=$NR_GUESSES WHERE username='$USERNAME'")
else
  if [[ $NR_GUESSES -lt $BEST_GAME ]]
  then
  UPDATE_BEST=$($PSQL "UPDATE users SET best_game=$NR_GUESSES WHERE username='$USERNAME'")
  fi
fi
