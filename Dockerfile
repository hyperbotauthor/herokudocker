FROM alpine:3.10

ENV NODE_VERSION 15.1.0

COPY package*.json ./

RUN npm install

COPY server.js ./
