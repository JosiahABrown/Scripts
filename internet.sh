#!/bin/bash

# Checks if the internet works

[[ `ping -c 1 google.com` ]] && echo "Your internet works, $USER"
