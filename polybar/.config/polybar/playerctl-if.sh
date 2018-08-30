#!/bin/bash

if [[ "$(playerctl status)" = "Playing" || "$(playerctl status)" = "Paused" ]];
then
  echo "0"
fi
