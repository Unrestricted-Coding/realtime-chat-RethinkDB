#!/bin/bash

# README
# This will install nodejs and npm on your system,
# should work on most places other than Windows.
# Copy paste and run each line into your terminal.
# If you are on Windows, http://nodejs.org/download/ has
# a installer that will automatically do it for you.

#debian/ubuntu
sudo apt-get update -y
sudo apt-get install curl git git-core -y
#fedora/openSUSE
sudo yum check-update -y
sudo yum install curl git git-core -y

# install nodejs
git clone http://github.com/isaacs/nave.git
sudo ./nave/nave.sh usemain stable
# If you just want nodejs and npm but not dependencies, then stop here.

npm install

#run realtime chat
sudo /usr/local/bin/node ./app.js 80 # change `80` to `8080` for development purposes.