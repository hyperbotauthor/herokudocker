FROM hyperbotauthor/herokudocker:latest

COPY . .

RUN node -v

RUN sudo yarn install
