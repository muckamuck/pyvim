#!/bin/bash

sudo apt update
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt install -y nodejs
node -v
