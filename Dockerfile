FROM node:0.12-slim

RUN \
  npm install -g bower && \
  npm install -g forever && \
  npm install -g nodemon && \
  mkdir -p /var/www && \
  useradd -ms /sbin/nologin node && \
  chown -R node:node /var/www

WORKDIR /var/www/

EXPOSE 3000

USER node

CMD npm install && npm start
