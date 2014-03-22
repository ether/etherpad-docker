# Etherpad-Lite Dockerfile
#
# https://github.com/Leibnitius/etherpad-docker
#
# Version 0.1

# Use Docker's nodejs, which is based on ubuntu
FROM dockerfile/nodejs

# Get Etherpad-lite's other dependencies
RUN apt-get update
RUN apt-get install -y gzip git-core curl python libssl-dev pkg-config build-essential

# Grab the latest Git version
RUN git clone git://github.com/ether/etherpad-lite.git

EXPOSE 9001
ENTRYPOINT /root/etherpad-lite/bin/run.sh
