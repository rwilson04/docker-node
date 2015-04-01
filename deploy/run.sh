#!/bin/bash
CMD cd $NODE_DIR
npm install
exec authbind --deep npm start
