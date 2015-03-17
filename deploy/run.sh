#!/bin/bash
#copy node modules, etc to volume the server runs from
if [ "$COPY_TO_VOLUME" = "true" ]; then
	echo "Copying from /opt/node to /var/www \n"
	cp -R /opt/node/. /var/www/
else
	echo "Leaving contents of /var/www alone \n"
fi

if [ -f ${INDEX_DIR}/index.js ];
then
    cd ${INDEX_DIR}; nodemon --watch ${INDEX_DIR} ${INDEX_DIR}/index.js
else
    echo "No index.js file found in ${INDEX_DIR}"
fi
