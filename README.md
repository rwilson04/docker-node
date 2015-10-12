##Description
Basic Node JS server template

##Usage
* Run by itself or as a parent docker image, exposes volume /var/www as code directory
* Set `COPY_TO_VOLUME` to false if contents should not be overwritten (useful in development)
* Set `INDEX_DIR` to location of index.js, if not /var/www (useful in development)
* Contents of /opt/node copied to volume at runtime when `run.sh` is executed
* Runs `nodemon ${INDEX_DIR}/index.js` by default, exposes port 80

##`onbuild` tag
Build an app and run it out of the box.
* Base the child image on shinymayhem/node:onbuild
* Place app code in `src/` at build-root
	* Add `src/index.js`, which is run by default
	* Add `src/package.json` for npm install, which runs during build
* Build app and run as normal

##Debugging
* Run debugger web server listening in background with `node-inspector --web-port 8080 > /dev/null 2>&1 &`, or run in separate screen (not sure how to suppress output)
* Start script with debugging enabled, e.g. `node debug index.js`
* Go to server.com:8080/?port=5858 to see debugger window, run script to start server
* Replicate the conditions at server.com under which the debugger should break (note: might be unable to set breakpoints in anonymous functions until they have been declared, i.e. when server has started)
