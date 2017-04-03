FROM node:boron

# Set environment docker build --build-arg NODE=development --rm
ARG NODE=dev
ENV NODE_ENV ${NODE}

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies to run only production based dependencies DO NOT RUN FOR DEV IT MIGHT FAIL
COPY package.json /usr/src/app/
RUN npm install --only production

# Bundle app source
COPY . /usr/src/app

EXPOSE 5000
CMD [ "npm", "start" ]