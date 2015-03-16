# Original source: https://github.com/dockerfile/nodejs
#

# Pull base image.
FROM shinymayhem/python

# Install Node.js
RUN \
  cd /tmp && \
  wget http://nodejs.org/dist/node-latest.tar.gz && \
  tar xvzf node-latest.tar.gz && \
  rm -f node-latest.tar.gz && \
  cd node-v* && \
  ./configure && \
  CXX="g++ -Wno-unused-local-typedefs" make && \
  CXX="g++ -Wno-unused-local-typedefs" make install && \
  cd /tmp && \
  rm -rf /tmp/node-v* && \
  npm install -g npm && \
  npm install -g nodemon && \
  echo -e '\n# Node.js\nexport PATH="node_modules/.bin:$PATH"' >> /root/.bashrc
RUN \
    mkdir -p /opt/node && \
    mkdir -p /var/www && \
    cd /opt/node && \
    npm install -g bower && \
    npm install -g npm

COPY deploy/run.sh /opt/deploy/run.sh
COPY deploy/nodemon.json /opt/node/

VOLUME /var/www/

WORKDIR /var/www/

ENV COPY_TO_VOLUME true
ENV INDEX_DIR /var/www

EXPOSE 80

CMD /bin/bash /opt/deploy/run.sh
