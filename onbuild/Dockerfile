FROM shinymayhem/node
ONBUILD COPY fetch-repo.sh /opt/node/fetch.sh
ONBUILD RUN chmod +x /opt/node/fetch.sh
#ONBUILD COPY package.json /opt/node/
#ONBUILD RUN pwd
ONBUILD RUN bash fetch.sh
ONBUILD RUN npm install
ONBUILD RUN rm /opt/node/fetch.sh
