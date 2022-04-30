#!/bin/bash
# 各テーブルをtruncate 
# csvのファイル名を配列で取得
# 取得したファイル名数分ループ処理
csvFiles=($(ls /docker-entrypoint-initdb.d/csv/))
# 　ループ内はファイルをDBにimportする
for csvFile in ${csvFiles[@]}; do
  tableName=`echo "$csvFile" | sed -e "s/.csv//g"`
    psql -p 5432 -U thumb -d thumb -c "\copy $tableName from /docker-entrypoint-initdb.d/csv/$csvFile delimiter ',' csv header;"
done
