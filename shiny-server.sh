#!/bin/sh

# Make sure the directory for individual app logs exists
mkdir -p /var/log/shiny-server
chown shiny.shiny /var/log/shiny-server

# from GIE not to use with GxIT IIANW
# chmod +x /monitor_traffic.sh
# exec /monitor_traffic.sh &

exec shiny-server 2>&1
