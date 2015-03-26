# Unifi Controller Backup

## Description

This is a small tool for backup the Unifi Controller. This tool use the *unifi_sh_api* provided by Ubiquiti. You can backup various Unifi Controller with different software version and multiples sites.

You must define a folder in which you must write your Unifi Controller definitions, one for each Unifi Controller.

This tool have been tested with some Unifi Controller versions:

* 3.2.1
* 3.2.7
* 3.2.10


## Install

Just use install.sh :-)

## Use

* Normal use
```
$ ucb # This is equal to "ucb -c /etc/ucb/config -d /etc/ucb/controllers"
```

* Getting help
```
$ ucb -h
Help documentation for Unifi Controller Backup, version 0.1

Basic usage: ucb

Command line switches are optional. The following switches are recognized.
  -c  --Sets the config file path. Default file is /etc/ucb/config
  -d  --Sets the directory path whith all the controllers config. Default directory is /etc/ucb/controllers
  -v  --Sets verboe mode, is not set by default
  -h  --Displays this help message. No further functions are performed.

Example: ucb -c /etc/ucb/config -d /etc/ucb/controllers
```

* Crontab
You can use a crontab for regular backup
```
$ cat /etc/cron.d/ucb
# Backup all by Unifi Controller every day at 01:00 a.m.
00 01 * * * root /bin/ucb 

```

* Log 
Logs gives info about backup

```
2015-03-26 16:23:01: Starting backup from the file /etc/ucb/controllers/example.conf
2015-03-26 16:23:01: Finding it sites for example
2015-03-26 16:23:01: Hostname: example, Site: default -> Starting
2015-03-26 16:23:01: Hostname: example, Site: default -> Login
2015-03-26 16:23:01: Hostname: example, Site: default -> Doing the backup to /var/backups/unifi_controller/20150326-example-default.unf
2015-03-26 16:23:05: Hostname: example, Site: default -> Size of /var/backups/unifi_controller/20150326-example-default.unf is 2,6M
2015-03-26 16:23:05: Hostname: example, Site: default -> Cleaning old backups
2015-03-26 16:23:05: Hostname: example, Site: default -> We must keep 10 backups and we have 1
2015-03-26 16:23:05: Hostname: example, Site: default -> No old copies to delete
2015-03-26 16:23:05: Hostname: example, Site: default -> Logout
2015-03-26 16:23:05: Hostname: example, Site: default -> Finished
2015-03-26 16:23:05: Finished backup from the file /etc/ucb/controllers/example.conf

```

## Limitations
* username defined in a Unifi Controller must have access to all sites defined on it.
* Sites Name can't contains spaces :-|

## TODO
* ~~Logs~~
* Test

