FROM node:carbon-alpine@sha256:7daef4e511bcd3655c18cb58bfc382a4391b04c7881c4debc17a5882908917e4

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY . .

CMD [ "npm", "start" ]

