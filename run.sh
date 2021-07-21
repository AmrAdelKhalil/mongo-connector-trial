#!/bin/bash

# set name for mongo database to read from and elasticsearch index to write to
db_name="${DBNAME:-demoDB}"
sed -i "s/<DBNAME>/$db_name/g" ./config.json

mongo-connector -m ${MONGO_HOST} -t ${ELASTICSEARCH_HOST}:9200 -c config.json
