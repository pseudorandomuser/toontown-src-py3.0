#!/bin/bash

cd "$(dirname "$0")"
open ./start-astron-cluster.sh
sleep 2
open ./start-uberdog-server.sh
sleep 5
open ./start-ai-server.sh
