FROM hyperbotauthor/baseimage:latest

COPY . .

RUN ./Dockerfile.sh

RUN sudo apt-get update -y
RUN sudo apt-get install redis-server -y; exit 0

RUN redis-server &

RUN cd lila ; chmod +x lila ; ./lila run
