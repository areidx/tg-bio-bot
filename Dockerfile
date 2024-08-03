FROM --platform=linux/amd64 node:20-slim

WORKDIR /app
COPY package*.json tsconfig.json ./

COPY src .

RUN npm i

CMD [ "npm", "start" ]