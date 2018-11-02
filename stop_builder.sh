#!/bin/bash

docker stop builder
docker ps -a | awk '{ print $1,$2 }' | grep builder | awk '{print $1 }' | xargs -I {} docker rm {}
