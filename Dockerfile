FROM node:8

WORKDIR /moleculer

COPY package.json .
COPY package-lock.json .

RUN npm install

ENV SERVICES=

COPY . .

ENTRYPOINT npm start
