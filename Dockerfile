FROM node:12

RUN apt-get update -y

COPY package*.json ./

RUN npm cache clean --force

RUN npm install

COPY server.js ./
