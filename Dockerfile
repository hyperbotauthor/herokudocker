FROM hyperbotauthor/herokudocker:latest

COPY . .

RUN node -v

RUN sudo npm install -g npm

RUN sudo npm install
