FROM node:15

COPY package*.json ./

RUN npm cache clean --force
RUN rm -r node_modules

RUN npm rebuild

COPY server.js ./
