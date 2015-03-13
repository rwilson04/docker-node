##Description
Basic Node JS server template

##Usage
* Access /var/www/server volume from another container, place code there
* Node code, like express, installed to /opt/node. run.sh copies it to volume at runtime
* Runs `node index.js` in /var/www/server by default, exposes port 80

##Onbuild
Build an app and run it out of the box
* base the image on shinymayhem/node:onbuild
* Add fetch-repo.sh, which includes code needed to run app
    * Example

    `git init
    git remote add -t master origin http://github.com/user/repo
    git fetch
    git merge origin/master`
* Build app and run as normal
