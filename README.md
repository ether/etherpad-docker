# etherpad-docker

This is a Docker image of the latest development version of Etherpad which is nothing more than the basic test setup as described on https://github.com/ether/etherpad-lite.
All of these instructions are as a member of the `docker` group (or root).

To download the image from the Docker index, run:

`docker pull etherpad/etherpad`

To run Etherpad on port 9001, run:

`docker run -d -p 9001:9001 etherpad/etherpad`

To run Etherpad on port 80, run:

`docker run -d -p 80:9001 etherpad/etherpad`

## Running with custom settings

To edit the Etherpad `settings.json`, it is necessary to clone the git repository:

`git clone git://github.com/ether/etherpad-docker.git && cd etherpad-docker`

Then edit `settings.json` to your liking and rebuild the container, running:

`docker build -t <YOUR_USERNAME>/etherpad .`

This image could also be used as a base for Docker Etherpad images integrated with MySQL, etc.
