#!/bin/bash

psql -p 5432 -U thumb -d thumb -f /docker-entrypoint-initdb.d/sql/01_ddl.sql
exit $?
