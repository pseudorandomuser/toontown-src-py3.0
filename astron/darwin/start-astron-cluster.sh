#!/bin/sh

cd "$(dirname "$0")/.."

./astrond --loglevel info config/cluster.yml
