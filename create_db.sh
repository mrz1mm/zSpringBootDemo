#!/bin/bash

DATABASE_NAME="EpiMunicipal"
DATABASE_USER="postgres"
DATABASE_HOST="localhost"
DATABASE_PORT="5432"

# Check if the database exists
if psql -h "$DATABASE_HOST" -p "$DATABASE_PORT" -U "$DATABASE_USER" -lqt | cut -d\| -f1 | grep -w "$DATABASE_NAME" > /dev/null 2>&1; then
  echo "Database '$DATABASE_NAME' already exists."
else
  echo "Database '$DATABASE_NAME' does not exist. Creating..."
  # Attempt to create the database
  if psql -h "$DATABASE_HOST" -p "$DATABASE_PORT" -U "$DATABASE_USER" -d "postgres" -c "CREATE DATABASE \"$DATABASE_NAME\""; then
    echo "Database '$DATABASE_NAME' created successfully."
  else
    echo "Error creating database '$DATABASE_NAME'."
    exit 1
  fi
fi

exit 0