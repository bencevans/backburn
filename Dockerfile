FROM node:carbon-alpine@sha256:c9f2470464363addb0be6a61678f44854e73eee974bbc792a71d4d2b7ffd5edd

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY . .

CMD [ "npm", "start" ]

