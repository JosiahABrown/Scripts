#!/bin/bash

# ----------------------------
#
# Displays the directory size
#
# ----------------------------

read -p "What directory do you want the size of?: " x
du -sh "$x"
