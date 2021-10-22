#!/bin/bash

# wait for booting
sleep 10

# Launch main.scd for initialization
./run_code.sh &

# Get its PID
PID=$!

# Wait for scsynth server boot for 10
sleep 10

# kill main.scd for initial server boot error
kill $PID

# relaunch main.scd
./run_code.sh
