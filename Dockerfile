FROM arm32v6/alpine
# can be replaced with just "alpine" on a regular PC
# or
# FROM resin/rpi-raspbian:latest
# Resin.io is usable on all supported versions of the Raspberry Pi. It is a light-weight version of Raspbian Jessie which makes it a good choice.

RUN apk --update add nodejs nodejs-npm

WORKDIR /root/
ADD ./package.json ./package.json

RUN npm i
ADD ./index.js ./index.js

EXPOSE 3000
CMD ["npm", "start"]
