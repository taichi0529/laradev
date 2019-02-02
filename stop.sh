#!/usr/bin/env bash -e

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR
if [ -e "src" ]; then
    echo 'Directory "src" already exists.'
    exit
fi
cd laradock
cp env-example .env
docker-compose stop
