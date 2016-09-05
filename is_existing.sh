#!/bin/bash

container_exists="$(docker ps -f=name=db -a | grep -w db)"

if [[ ! -z "$container_exists" ]]
then
    echo "true";
else
    echo "false";
fi