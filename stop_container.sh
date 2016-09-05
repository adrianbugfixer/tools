#!/bin/bash

#TODO
#forwarded port as parameter
#password as parameter

is_existing=$(./is_existing.sh)
is_running=$(./is_running.sh)

if [[ $is_existing = "true" ]]
then
    if [[ $is_running = "true" ]]
    then
        stop_container=$(docker stop db)
    else
        echo "Container db is already stopped!"
        exit 1
    fi
else
    echo "Container db does not exists!"
    exit 1
fi

is_running=$(./is_running.sh)

if [[ $is_running = "false" ]]
then
    echo "Container db stopped successfully"
    exit 0
else
    echo "Container db cannot be stopped"
    exit 1
fi
