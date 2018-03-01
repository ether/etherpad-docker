#!/bin/sh

if [ -f /opt/vol/settings.json ]; then 
	echo "Volume with config was loaded"
	echo "Using injected config…"
	cp /opt/vol/settings.json /opt/etherpad/settings.json
else 
	echo "Using default config"
fi
supervisord -c /etc/supervisor/supervisor.conf -n
