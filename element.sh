  #!/bin/bash

  PSQL="psql -X --username=freecodecamp --dbname=periodic_table --no-align --tuples-only -c"
  [[ -z $1 ]] && echo "Please provide an element as an argument."

  if [[ $1 =~ ^[0-9]+$ ]]
  then
    NAME=$($PSQL "SELECT name FROM elements WHERE atomic_number=$1")
    if [[ -z $NAME ]] 
    then
    echo "I could not find that element in the database."
    else
    SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE atomic_number=$1")
    TYPE=$($PSQL "SELECT types.type FROM types INNER JOIN properties USING(type_id) INNER JOIN elements USING(atomic_number) WHERE atomic_number=$1")
    MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number=$1")
    BOILING=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number=$1")
    MELTING=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number=$1")
    echo "The element with atomic number $1 is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
    fi
  fi

  if [[ ${#1} -le 2 && ! -z $1 && ! $1 =~ ^[0-9]+$ ]]
  then
    NAME=$($PSQL "SELECT name FROM elements WHERE symbol ILIKE '$1'")
    if [[ -z $NAME ]] 
    then
    echo "I could not find that element in the database."
    else
    NR=$($PSQL "SELECT atomic_number FROM elements WHERE symbol ILIKE '$1'")
    TYPE=$($PSQL "SELECT types.type FROM types INNER JOIN properties USING(type_id) INNER JOIN elements USING(atomic_number) WHERE symbol ILIKE '$1'")
    MASS=$($PSQL "SELECT atomic_mass FROM properties INNER JOIN elements USING(atomic_number) WHERE symbol ILIKE '$1'")
    BOILING=$($PSQL "SELECT boiling_point_celsius FROM properties INNER JOIN elements USING(atomic_number) WHERE symbol ILIKE '$1'")
    MELTING=$($PSQL "SELECT melting_point_celsius FROM properties INNER JOIN elements USING(atomic_number) WHERE symbol ILIKE '$1'")
    echo "The element with atomic number $NR is $NAME ($1). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
    fi
  fi

  if [[ ${#1} -gt 2 && ! $1 =~ ^[0-9]+$ ]]
  then
    SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE name ILIKE '$1'")
    if [[ -z $SYMBOL ]] 
    then
    echo "I could not find that element in the database."
    else
    NR=$($PSQL "SELECT atomic_number FROM elements WHERE name ILIKE '$1'")
    TYPE=$($PSQL "SELECT types.type FROM types INNER JOIN properties USING(type_id) INNER JOIN elements USING(atomic_number) WHERE name ILIKE '$1'")
    MASS=$($PSQL "SELECT atomic_mass FROM properties INNER JOIN elements USING(atomic_number) WHERE name ILIKE '$1'")
    BOILING=$($PSQL "SELECT boiling_point_celsius FROM properties INNER JOIN elements USING(atomic_number) WHERE name ILIKE '$1'")
    MELTING=$($PSQL "SELECT melting_point_celsius FROM properties INNER JOIN elements USING(atomic_number) WHERE name ILIKE '$1'")
    echo "The element with atomic number $NR is $1 ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $1 has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
    fi
  fi
