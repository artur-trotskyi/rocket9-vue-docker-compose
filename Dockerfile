FROM node:22-alpine

RUN npm install -g http-server

WORKDIR /app

COPY package*.json ./

RUN apk add --no-cache bash
RUN npm install -g json-server

CMD ["sh", "-c", "ls -la /app && tail -f /dev/null"]