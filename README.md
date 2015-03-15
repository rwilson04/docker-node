##Description
Basic Node JS server template

##Usage
* Access /var/www/server volume from another container, place code there
* Node code, like express, installed to /opt/node. run.sh copies it to volume at runtime
* Runs `node index.js` in /var/www/server by default, exposes port 80

##Onbuild
Build an app and run it out of the box. If build root contains app code, both can exist in the same repository.
* base the image on shinymayhem/node:onbuild
* Ensure `fetch-repo.sh` exists in build root. Script should include code needed to run app
    * Example

	```bash
	git init
	git remote add -t master origin http://github.com/user/repo
	git fetch
	git merge origin/master
	```

* Ensure `package.json` file exists so that `npm install` works on build
* Build app and run as normal
