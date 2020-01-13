FROM node:latest

RUN apt-get clean
RUN apt-get update -qq
RUN apt-get install -y vim curl git

RUN mkdir -p /app
WORKDIR /app

ADD . /app

RUN npm install

EXPOSE 3000
CMD npm start
