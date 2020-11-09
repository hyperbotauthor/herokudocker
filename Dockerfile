FROM hyperbotauthor/herokudocker:latest

COPY . .

RUN node -v

RUN npm cache clean --force
RUN npm install
