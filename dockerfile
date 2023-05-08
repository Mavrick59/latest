FROM node:14-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=3001
ENV STATIC_DIR="./client"

EXPOSE 3001

CMD ["node", "index.js"]
