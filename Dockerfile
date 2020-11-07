FROM node:12

RUN apt-get update -y
RUN apt-get install libopenblas-base -y
RUN apt-get install libstdc++6 -y
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:ubuntu-toolchain-r/test 
RUN apt-get update -y; exit 0
RUN apt-get upgrade -y
RUN apt-get dist-upgrade -y

COPY package*.json ./

RUN npm cache clean --force

RUN npm install

COPY server.js ./
