FROM node:15

COPY package*.json ./

RUN npm cache clean --force

RUN npm rebuild

COPY server.js ./
