FROM node:carbon-alpine@sha256:d0febbb04c15f58a28888618cf5c3f1d475261e25702741622f375d0a82e050d

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY . .

CMD [ "npm", "start" ]

