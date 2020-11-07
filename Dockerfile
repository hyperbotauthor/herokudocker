FROM node:12

COPY package*.json ./

RUN npm cache clean --force

RUN npm install

COPY server.js ./
