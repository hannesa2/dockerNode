# Node.js on Rasperry Pi Zero arm32v6 alpinehello

For baseimage Resin.io is used to create a base image which is usable on all supported versions of the Raspberry Pi. It is a light-weight version of Raspbian Jessie which makes it a good choice.

### Build

`docker build -t node-hello:arm32v6 .`

### Run

`docker run --publish 3000:3000 node-hello:arm32v6`
