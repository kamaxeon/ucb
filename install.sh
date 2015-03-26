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
mkdir -p "$PREFIX"/etc/ucb
mkdir -p "$PREFIX"/lib/ucb
cp -R bin/* "$PREFIX"/bin/


cp -R etc/* "$PREFIX"/etc/ucb

echo "Installed Unifi Controller Backup"
echo "bin/ucb copied to $PREFIX/bin/ucb"
echo "etc/* copied to $PREFIX/etc"
echo "Check the ucb config $PREFIX/etc/config"
echo "You must write your Unifi Controllers definitions in $PREFIX/etc/ucb/controllers"
echo "Yoy must run \"$PREFIX/bin/ucb -c $PREFIX/etc/config -d $PREFIX/etc/ucb/controllers\""
