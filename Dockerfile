FROM hyperbotauthor/herokudocker:latest

COPY . .

RUN node -v

RUN npm install -g npm

RUN npm install
