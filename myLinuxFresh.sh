#!/bin/bash

# USE WITH ROOT PRIVILEGES!
apt update
apt upgrade -y

# Utility - nvbn/thefuck
apt update
apt install python3-dev python3-pip python3-setuptools -y
pip3 install thefuck

# Node Version manager install - nvm-sh/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

# Youtube-DL
pip3 install --upgrade youtube_dl -y

# Powertop - Power consuption optimization utility
apt-get install powertop -y
