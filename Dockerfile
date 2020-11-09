FROM hyperbotauthor/baseimage:latest

COPY . .

ARG DEBIAN_FRONTEND=noninteractive

RUN ./Dockerfile.sh
