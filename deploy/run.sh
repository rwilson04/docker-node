#!/bin/bash
#copy node modules, etc to volume the server runs from
cp -R /opt/node/. /var/www/server/
cd /var/www/server

if [ -f index.js ];
then
    nodemon index.js
else
    echo "No index.js file found"
fi
