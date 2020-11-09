FROM hyperbotauthor/herokudocker:latest

COPY . .

RUN node -v

RUN npm install
