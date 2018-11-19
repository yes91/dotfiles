#!/bin/sh

if ! mpc >/dev/null 2>&1; then
  echo Server offline
  exit 1
elif mpc status | grep -q playing; then
  ( mpc current | zscroll -l 20 -d 0.2 -n ) &
else
  echo Not playing
fi
# Block until an event is emitted
mpc idle >/dev/null
