#!/bin/bash

# Checks if the internet works

if [[ `ping -c 1 google.com` ]]; then
	echo "Network seems to be up"
elif [[ `ping -c 1 8.8.8.8` ]]; then
	echo "8.8.8.8 successfully pinged. DNS error"
else
	echo "Network seems to be down"
fi
