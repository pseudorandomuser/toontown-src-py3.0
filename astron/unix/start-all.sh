#!/bin/bash

NUM_AI_SERVERS=4

cd "$(dirname "$0")"
open ./start-astron-cluster.sh
sleep 2
open ./start-uberdog-server.sh

for i in $(seq 1 $NUM_AI_SERVERS); do sleep 5; open ./start-ai-server-0$i.sh; done