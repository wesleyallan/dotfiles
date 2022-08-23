#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch mainBar
echo "---" | tee -a /tmp/polymainBar.log
polybar mainBar 2>&1 | tee -a /tmp/polymainBar.log & disown
