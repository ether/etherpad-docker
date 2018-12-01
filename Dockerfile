# Etherpad-Lite Dockerfile
#
# https://github.com/ether/etherpad-docker
#
# Developed from a version by Evan Hazlett at https://github.com/arcus-io/docker-etherpad
#
# Version 1.0

# use Docker's nodejs, which is based on debian
FROM node:latest
LABEL maintainer="Etherpad team, https://github.com/ether/etherpad-lite"

# get etherpad's other dependencies
RUN apt-get update && apt-get install -y \
  git-core \
  supervisor \
  && rm -rf /var/lib/apt/lists/*

# install supervisor.conf in a low layer of the container
ADD supervisor.conf /etc/supervisor/supervisor.conf

# grab the latest stable git version
RUN git clone --branch develop https://github.com/ether/etherpad-lite.git /opt/etherpad

# install node dependencies for Etherpad
RUN /opt/etherpad/bin/installDeps.sh

# add the configuration file
ADD settings.json /opt/etherpad/settings.json

EXPOSE 9001
CMD ["supervisord", "-c", "/etc/supervisor/supervisor.conf", "-n"]
