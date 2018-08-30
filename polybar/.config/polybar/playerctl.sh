#!/bin/bash

if [[ "$(playerctl status)" = "Playing" ]];
then
  playerctl metadata xesam:title;
  echo -n " - ";
  playerctl metadata xesam:artist;
else
  echo -n "P"; fi

