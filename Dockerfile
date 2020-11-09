FROM hyperbotauthor/herokudocker:latest

COPY . .

RUN sudo yarn install
