#!/bin/bash

container_on="$(docker inspect -f {{.State.Running}} db)"

echo "${container_on}"
