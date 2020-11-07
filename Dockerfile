FROM node:15

COPY package*.json ./

RUN npm rebuild

COPY server.js ./
