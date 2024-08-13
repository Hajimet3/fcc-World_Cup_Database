#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo "$($PSQL "TRUNCATE TABLE games, teams")"

# Declare associative arrays to keep track of teams
declare -A teams

# Read games.csv and process each line
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
    # Trim any leading/trailing spaces from WINNER and OPPONENT
    WINNER=$(echo "$WINNER" | sed 's/^ *//;s/ *$//')
    OPPONENT=$(echo "$OPPONENT" | sed 's/^ *//;s/ *$//')

    # Insert winner into teams table if not already inserted
    if [[ -z "${teams[$WINNER]}" ]]
    then
      # Insert team and get team_id
      INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      teams["$WINNER"]=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    fi

    # Insert opponent into teams table if not already inserted
    if [[ -z "${teams[$OPPONENT]}" ]]
    then
      # Insert team and get team_id
      INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      teams["$OPPONENT"]=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    fi

    # Get team IDs from associative array
    WINNER_ID=${teams["$WINNER"]}
    OPPONENT_ID=${teams["$OPPONENT"]}

    # Insert game into games table
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(winner_id, opponent_id, winner_goals, opponent_goals, year, round) VALUES($WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS, $YEAR, '$ROUND')")
  fi
done
