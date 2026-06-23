#!/bin/bash

sudo apt update
sudo apt full-upgrade
sudo apt update

nohup xfce4-panel -r >/dev/null 2>&1 &

exit 0