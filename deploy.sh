#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
#Install npm install -g pm2
sudo npm install -g pm2
#stip any instance of our application running currently
pm2 stop SimpleApplication
# change directory into folder app is downloaded
cd SimpleApplication/

npm install
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt

pm2 start ./bin/www --name SimpleApplication