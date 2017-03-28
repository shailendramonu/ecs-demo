# DOCKER-VERSION 1.1.2
FROM ubuntu:latest

# Install Node.js and npm
RUN apt-get -y update
RUN apt-get -y install nodejs
RUN apt-get -y install npm

# Bundle app source
ADD . /src
# Install app dependencies
RUN cd /src; npm install --only production

EXPOSE  3000
CMD ["nodejs", "/src/server/server.js"]