#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

# Check for arguments
if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
  exit
fi

# Query database based on argument type
if [[ $1 =~ ^[0-9]+$ ]]
then