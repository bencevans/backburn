FROM node:carbon-alpine@sha256:338284233a8707f540938d05ab94cd68d9ce8a2adb100beb6728f901d59c274d

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY . .

CMD [ "npm", "start" ]

