FROM node:latest
VOLUME /usr/src/app

WORKDIR /usr/src/app
CMD npm run start
