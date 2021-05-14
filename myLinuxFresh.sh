#!/bin/bash


# well tested on Ubuntu 20.04

# USE WITH ROOT PRIVILEGES!
apt update
apt upgrade -y

################################################
#Install Curl - downloading utility
################################################
apt-get install curl -y

################################################
# Utility - nvbn/thefuck
################################################
apt update
apt install python3-dev python3-pip python3-setuptools -y
pip3 install thefuck

################################################
# Node Version manager install - nvm-sh/nvm
################################################
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

################################################
# Youtube-DL
################################################
pip3 install --upgrade youtube_dl -y

################################################
# Powertop - Power consuption optimization utility
################################################
apt-get install powertop -y

################################################
#installing VSCode - code editor
################################################
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

apt install apt-transport-https
apt update
apt install code # or code-insiders

################################################
# Installing Postman - API Testing Utility
################################################
snap install postman

################################################
# Install RStudio - R dev IDE
################################################
# Installing R language
# update indices
apt update -qq
# install two helper packages we need
apt install --no-install-recommends software-properties-common dirmngr
# import the signing key (by Michael Rutter) for these repo
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
# add the R 4.0 repo from CRAN -- adjust 'focal' to 'groovy' or 'bionic' as needed
add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"

apt install --no-install-recommends r-base
add-apt-repository ppa:c2d4u.team/c2d4u4.0+
# adding key for the same
apt install --no-install-recommends r-cran-rstan
# or apt install --no-install-recommends r-cran-tidyverse 

# Installing RStudio
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.4.1106-amd64.deb
apt install ./rstudio-1.4.1106-amd64.deb

###############################################
# Installing Firefox - dev edition - web browser
###############################################
add-apt-repository ppa:lyzardking/ubuntu-make
apt-get update
apt-get install ubuntu-make
# Actual installation command
umake web firefox-dev

###############################################
# Installing Chromium - Chrome based web browser
###############################################
apt-get install chromium-browser
 
###############################################
# Installing VLC - Media Player
###############################################
snap install vlc



