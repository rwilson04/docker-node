##Description
Basic Node JS server template

##Usage
-Access /var/www/server volume from another container, place code there
-Node code, like express, installed to /opt/node. run.sh copies it to volume at runtime
-Runs `node index.js` in /var/www/server by default, exposes port 80
