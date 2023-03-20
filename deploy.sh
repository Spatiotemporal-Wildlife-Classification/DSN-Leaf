#!/bin/bash
# To execute run ./deploy.sh
# Must be within the dsn-leaf directory

# General updates
apt update
apt upgrade

# Install docker and Docker-compose
apt install docker.io
apt install docker-compose

# Clone the dsn-leaf repo
git clone https://github.com/trav-d13/dsn-leaf.git

# Navigate into directory and update
cd dsn-leaf
git pull

docker-compose build # Perform build in case any missed changes
docker-compose up  # Execute leaf functionality
