# sc3-job2021
sc3-job2021

## Manual Operation
```bash
$ git clone https://github.com/sjnah-side/sc3-job2021.git
$ sclang scripts/main.scd
```

## Auto Operation on Boot

### set shell script chmod
```bash
$ chmod +x autorun.sh
```

### add crontab
```bash
# add below line on crontab (not sudo crontab)
$ crontab -e

#-------- crontab ---------
@reboot cd /home/pi/sc3-job2021 && ./autorun.sh & 
#--------------------------
```

### shut down autorun
access with ssh and type following command
```bash
$ killall jackd sclang scsynth
```


