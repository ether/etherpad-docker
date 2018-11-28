# Etherpad-Lite Dockerfile
#
# https://github.com/ether/etherpad-docker
#
# Developed from a version by Evan Hazlett at https://github.com/arcus-io/docker-etherpad
#
# Version 1.0

# Use Docker's nodejs, which is based on debian
FROM node:latest
LABEL maintainer="John E. Arnold, iohannes.eduardus.arnold@gmail.com"

# Get Etherpad-lite's other dependencies
RUN apt-get update && apt-get install -y \
  git-core \
  supervisor \
  && rm -rf /var/lib/apt/lists/*

# Grab the latest Git version
RUN cd /opt && git clone https://github.com/ether/etherpad-lite.git etherpad

# Install node dependencies
RUN /opt/etherpad/bin/installDeps.sh

#mk dir for settins
RUN mkdir -p /opt/vol/

# Add conf files
ADD settings.json /opt/etherpad/settings.json
ADD supervisor.conf /etc/supervisor/supervisor.conf
ADD start.sh /usr/bin/start.sh

EXPOSE 9001
CMD ["start.sh"]
