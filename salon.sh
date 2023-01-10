#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=salon -tc"

SHOW_AVAILABLE () {
  AVAILABLE_SERVICES=$($PSQL "SELECT service_id,name FROM services ORDER BY service_id")
  echo "$AVAILABLE_SERVICES" | while read SERVICE_ID BAR SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done
  SELECT_SERVICE
}

SELECT_SERVICE () {
  echo -e "\nWhat do you want?"
  read SERVICE_ID_SELECTED
  NAME_SELECTED=$($PSQL "SELECT name FROM services WHERE service_id='$SERVICE_ID_SELECTED'")
  if [[ -z $NAME_SELECTED ]]
  then
    echo -e "\nThat is not a valid service."
    SHOW_AVAILABLE
  else
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE
  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  if [[ -z $CUSTOMER_NAME ]]
  then
    echo -e "\nWhat's your name?"
    read CUSTOMER_NAME
    INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(name,phone) VALUES('$CUSTOMER_NAME','$CUSTOMER_PHONE')")
  fi
  echo -e "\nWhat time?"
  read SERVICE_TIME
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  INSERT_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id,service_id,time) VALUES($CUSTOMER_ID,$SERVICE_ID_SELECTED,'$SERVICE_TIME')")
  echo -e "I have put you down for a $NAME_SELECTED at $SERVICE_TIME, $CUSTOMER_NAME."
  fi
}

SHOW_AVAILABLE
