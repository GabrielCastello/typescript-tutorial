FROM node:lts-alpine as base
WORKDIR /home/node/app

COPY package*.json ./

RUN npm i

COPY . .