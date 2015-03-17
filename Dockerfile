FROM node:0.12-slim

RUN \
  npm install -g bower && \
  npm install -g nodemon && \
  mkdir -p /opt/node && \
  mkdir -p /var/www

COPY deploy/run.sh /opt/deploy/run.sh

VOLUME /var/www/

WORKDIR /opt/node

ENV COPY_TO_VOLUME true
ENV INDEX_DIR /var/www

EXPOSE 80

CMD /bin/bash /opt/deploy/run.sh
