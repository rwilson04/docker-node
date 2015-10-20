FROM shinymayhem/node
ONBUILD COPY ./ /var/www
ONBUILD RUN cd /var/www; npm install --production

ENV NODE_ENV production

