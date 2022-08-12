#!/bin/bash

#Create and navigate into folder
cd ~
mkdir rdio-scanner
cd rdio-scanner

#Download Rdio latest release
curl -s https://api.github.com/repos/chuot/rdio-scanner/releases/latest | grep github.*rdio-scanner-linux-arm64-.*\.zip | cut -d : -f 2,3 | tr -d \"| wget -i - -O rdio.zip

#Unzip The Folder
unzip rdio.zip
mv rdio/* .
