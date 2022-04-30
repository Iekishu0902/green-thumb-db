#!/bin/bash

psql -p 5432 -U thumb -d thumb -f /docker-entrypoint-initdb.d/sql/01_ddl.sql
csvFiles=($(ls /docker-entrypoint-initdb.d/csv/))
for csvFile in ${csvFiles[@]}; do
  tableName=`echo "$csvFile" | sed -e "s/.csv//g"`
    psql -p 5432 -U thumb -d thumb -c "TRUNCATE TABLE $tableName;"
    psql -p 5432 -U thumb -d thumb -c "\copy $tableName from /docker-entrypoint-initdb.d/csv/$csvFile delimiter ',' csv header;"
done
exit $?
