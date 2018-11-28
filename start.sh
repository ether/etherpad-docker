#!/bin/sh

if [ -f /opt/vol/settings.json ]; then 
	echo "Volume with config was loaded"
	echo "Using injected config…"
	cp /opt/vol/settings.json /opt/etherpad/settings.json
else 
	echo "Using default config"
fi

if [ -f /opt/vol/APIKEY.txt ]; then 
	echo "Using custom apikey"
	cp /opt/vol/APIKEY.txt /opt/etherpad/APIKEY.txt
else 
	echo "using generated api key"
	cat /opt/etherpad/APIKEY.txt
fi

supervisord -c /etc/supervisor/supervisor.conf -n
