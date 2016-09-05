#!/bin/bash

#TODO
#forwarded port as parameter
#password as parameter

is_existing=$(./is_existing.sh)
is_running=$(./is_running.sh)

if [[ $is_existing = "true" ]]
then
    if [[ $is_running = "false" ]]
    then
        start_container=$(docker start db)
    else
        echo "Container is already running!"
        exit 1
    fi
else
    start_container="$(docker run --name db -p 5432:5432 -e POSTGRES_PASSWORD=postgres -d postgres)"
fi

is_running=$(./is_running.sh)

if [[ $is_running = "true" ]]
then
    echo "Container db started successfully"
    exit 0
else
    echo "Container db cannot be started"
    exit 1
fi
