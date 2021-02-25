#!/bin/bash

echo "> Creating Docker Image"
docker-compose up --build


echo "> Upload to Docker Hub"
docker tag vm:latest exusmultimedia/wa-avd:latest
docker push exusmultimedia/wa-avd:latest
https://hub.docker.com/r/exusmultimedia/wa-avd


echo "> Removing previous builds..."
docker rmi vm:latest
docker rmi exusmultimedia/wa-avd:latest