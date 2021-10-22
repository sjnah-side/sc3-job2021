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
$ chmod +x run_code.sh
$ chmod +x autorun.sh
```

### add crontab
```bash
# add below line on crontab
$ crontab -e

#-------- crontab ---------
@reboot sh /home/pi/sc3-job2021/autorun.sh
#--------------------------
```


