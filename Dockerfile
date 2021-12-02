FROM node:lts-alpine as base


#---------- PRE-REQS ----------
FROM base as prereq


#---------- DEVELOPMENT ----------
FROM prereq as development

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install && npm cache clean --force

COPY --chown=node:node . .