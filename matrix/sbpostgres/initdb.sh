#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE DATABASE sb;
    CREATE USER postgres WITH PASSWORD 'postgres';
    GRANT ALL PRIVILEGES ON DATABASE sb to postgres;
EOSQL