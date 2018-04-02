FROM node:carbon-alpine@sha256:fa3766ad0159e71ccb8970b00c1f2bfc354e22e2c26aa7a144605c600e4fda71

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY . .

CMD [ "npm", "start" ]

