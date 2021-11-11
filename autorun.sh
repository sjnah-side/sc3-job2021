#!/bin/bash

# Wait for boot
sleep 20

# Boot Jackd 
export PATH=/usr/local/bin:$PATH
export DISPLAY=:0.0
JACK_NO_AUDIO_RESERVATION=1 /usr/bin/jackd -P75 -dalsa -dhw:0 -r44100 -p512 -n3 > /home/pi/sc3-job2021/log/autorun_jackd.log 2>&1 &

# Wait for jackd initialization
sleep 10 

# Run Sclang and Scsynth
# main_HPa, main_HPr, main_ML, main_PP
cd /home/pi/sc3-job2021/scripts
sclang ./main_HPa.scd > /home/pi/sc3-job2021/log/autorun_sclang.log 2>&1

# if you want to stop, access with ssh
# and run following command "killall jackd sclang scsynth"
