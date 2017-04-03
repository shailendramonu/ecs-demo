FROM node:boron

# Set environment docker build --build-arg NODE=development --rm
ARG NODE=dev
ENV NODE_ENV ${NODE}

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install --only ${NODE}

# Bundle app source
COPY . /usr/src/app

EXPOSE 5000
CMD [ "npm", "start" ]