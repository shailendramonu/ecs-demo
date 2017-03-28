FROM node:6.10.0

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#RUN npm install -g mean-cli bower gulp

#RUN	groupadd -r node \
#&&	useradd -r -m -g node node


#RUN rm -rf /usr/src/app/node_modules
#RUN chown -R node:node /usr/src/app

#USER node
#RUN touch /home/node/.mean
COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app/
#ENV PORT 3000
#ENV DB_PORT_27017_TCP_ADDR db
EXPOSE 3000
CMD [ "npm", "start" ]


#How to build:
# git clone git@github.com:shailendramonu/ecs-demo.git
# cd ecs-demo
# docker build -t ecs-demo .

#How to run:
# docker pull mongo
# docker run -d --name db mongo
# docker run -p 3000:3000 --link db:db mean
#https://blog.codeship.com/running-mean-web-application-docker-containers-aws/