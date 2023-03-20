#!/bin/bash
# To execute run ./deploy.sh

apt update
apt upgrade

apt install docker.io
apt install docker-compose

docker-compose up
