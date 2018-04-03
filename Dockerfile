FROM node:carbon-alpine@sha256:5f4b211bb3fdbb956d97c86721c34c6869d86eccec89bdfc7c27e8f6df50e272

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY . .

CMD [ "npm", "start" ]

