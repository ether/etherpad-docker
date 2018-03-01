etherpad-docker
===============

This is a Docker image which is nothing more than the basic test Etherpad setup as described on https://github.com/ether/etherpad-lite.
(All of these instructions are as root.) To download the image from the Docker index, run:

`docker pull leibnitius/etherpad-docker`

To run Etherpad on port 9001, run:

`docker run -d -p 9001:9001 leibnitius/etherpad-docker`

To run Etherpad on port 80, run:

`docker run -d -p 80:9001 leibnitius/etherpad-docker`

To use your custom Etherpad settings.json, the file has to be located at `/var/config/settings.json`.
Then  run:

`docker run -d -v /var/config:/opt/vol -p 9001:9001 leibnitius/etherpad-docker`

This image could also be used as a base for Docker Etherpad images integrated with MySQL, etc.
