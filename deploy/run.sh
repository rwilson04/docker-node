#!/bin/bash
#copy node modules, etc to volume the server runs from
if [ $COPY_TO_VOLUME = "true" ]; then
	cp -R /opt/node/. /var/www/
fi

if [ -f ${INDEX_DIR}/index.js ];
then
    cd ${INDEX_DIR}; nodemon ./index.js
else
    echo "No index.js file found in ${INDEX_DIR}"
fi
