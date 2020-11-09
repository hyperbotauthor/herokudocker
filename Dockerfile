FROM hyperbotauthor/herokudocker:latest

COPY . .

RUN node -v

RUN npm cache clean --force
RUN rm -rf node_modules
RUN rm package-lock.json
RUN npm rebuild
