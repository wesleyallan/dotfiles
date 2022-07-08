#!/bin/bash

killall -q polybar

echo "---" | tee -a /tmp/polybar.log
polybar barI3 2>&1 | tee -a /tmp/polybar.log & disown
echo "Bars launched..."
