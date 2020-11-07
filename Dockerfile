FROM node:15

COPY package*.json ./

RUN npm install

COPY server.js ./
