FROM hyperbotauthor/herokudocker:latest

COPY . .

RUN node -v

RUN sudo npm install
