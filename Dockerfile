FROM hyperbotauthor/baseimage:latest

COPY ./Dockerfile.sh ./

RUN ./Dockerfile.sh
