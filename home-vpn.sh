#!/bin/bash

wireguard_interface="wg0"

# Check the number of arguments
if [ $# -ne 1 ]; then
  echo "Usage: $0 <up|down>"
  exit 1
fi

# Check the argument
case $1 in
  up)
    nmcli connection up $wireguard_interface
    ;;
  down)
    nmcli connection down $wireguard_interface
    ;;
  *)
    echo "Invalid argument. Please use 'up' or 'down'."
    exit 1
    ;;
esac