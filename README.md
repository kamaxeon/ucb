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


## Limitations
* username defined in a Unifi Controller must have access to all sites defined on it.
* Sites Name can't contains spaces :-|

## TODO
* Logs
* Test

