#!/bin/bash

docker run -ti --name aerospike-aql --rm aerospike/aerospike-tools aql --host host.docker.internal --port 3010 --no-config-file
