#!/bin/bash

#TODO
#forwarded port as parameter
#password as parameter

is_running=$(./is_running.sh)

if [[ $is_running = "false" ]]
then
    start_container=$(./start_container.sh)
    echo "${start_container}"
    exit 0;
else
    stop_container=$(./stop_container.sh)
    echo "${stop_container}"
    start_container=$(./start_container.sh)
    echo "${start_container}"
    exit 0;
fi