etherpad-docker
===============

This is a Docker image which is nothing more than the basic test Etherpad setup as described on https://github.com/ether/etherpad-lite.
(All of these instructions are as root.) To download the image from the Docker index, run:

`docker pull leibnitius/etherpad-docker`

To run Etherpad on port 9001, run:

`docker run -d -p 9001:9001 leibnitius/etherpad-docker`

To run Etherpad on port 80, run:

`docker run -d -p 80:9001 leibnitius/etherpad-docker`

To edit the Etherpad settings.json, it is necessary to clone the Git repository:

`git clone git://github.com/ether/etherpad-docker.git && cd etherpad-docker`

Then edit the settings.json to your liking and run:

`docker build -t <YOUR_USERNAME>/etherpad-docker .`

This image could also be used as a base for Docker Etherpad images integrated with MySQL, etc.
