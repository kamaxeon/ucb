#!/usr/bin/env bash

set -e



PREFIX="$1"
if [ -z "$1" ]; then
  { echo "usage: $0 <prefix>"
    echo "  e.g. $0 /usr/local"
  } >&2
  exit 1
fi

mkdir -p "$PREFIX"/bin
mkdir -p "$PREFIX"/etc
mkdir -p "$PREFIX"/var/log/ucb
mkdir -p "$PREFIX"/lib/ucb
cp -R bin/* "$PREFIX"/bin

if [ ! -f "$PREFIX"/etc/config ]; then
  cp -a etc/config "$PREFIX"/etc/config
fi

cp -R etc/controllers/* "$PREFIX"/etc/controllers

echo "Installed Unifi Controller Backup"
echo "bin/ucb copied to $PREFIX/bin/ucb"
echo "etc/* copied to $PREFIX/etc"
echo "log will be send to $PREFIX/var/log/ucb.log"
echo "Check the ucb config $PREFIX/etc/config"
echo "You must write your Unifi Controllers definitions in $PREFIX/etc/controllers"
echo "Yoy must run \"$PREFIX/bin/ucb -c $PREFIX/etc/config -d $PREFIX/etc/controllers\""
