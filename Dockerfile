FROM node:12

RUN apt-get update -y
RUN apt-get install libopenblas-base -y
RUN apt-get install libstdc++6 -y
RUN add-apt-repository ppa:ubuntu-toolchain-r/test 
RUN apt-get update
RUN apt-get upgrade
RUN apt-get dist-upgrade

COPY package*.json ./

RUN npm cache clean --force

RUN npm install

COPY server.js ./
