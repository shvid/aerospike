#!/bin/bash


BIN=`pwd`

echo "Start Aerospike from $BIN."
echo "1. Interactive"
echo "2. Background"

read -p 'Select mode [N]:' mode

FLAG=-it

if [[ "$mode" == "1" ]]; then
   FLAG=-it
elif [[ "$mode" == "2" ]]; then
   FLAG=-d
else
   echo "Wrong number"
   exit
fi

docker run $FLAG --rm -v "$BIN:/opt/aerospike" --name aerospike -p 3010:3000 -p 3001:3001 -p 3002:3002 -p 3003:3003 aerospike:4.5.2.6 asd --foreground --config-file /opt/aerospike/etc/aerospike.conf
