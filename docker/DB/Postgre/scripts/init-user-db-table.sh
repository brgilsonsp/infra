#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE TABLE car(
        car_id serial PRIMARY KEY,
	    car_model VARCHAR ( 50 ) NOT NULL,
	    car_plate VARCHAR ( 10 ) NOT NULL
    );

EOSQL