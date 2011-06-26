#!/usr/bin/bash

MINUTES=25

function evenLogic {
  echo "$1 minutes left"
  afplay clocktick.m4a &
}

function fiveLogic {
  say.osascript $1 &
}

date

let MINUTES=MINUTES-1
sleep 60

for (( minute=MINUTES ; minute > 0 ; minute--))
do
  let isEven=`expr $minute % 2`
  if [ $isEven -eq 0 ] ; then
    evenLogic $minute
  fi

  let isDivFive=`expr $minute % 5`
  if [ $isDivFive -eq 0 ] ; then
    fiveLogic $minute
  fi

  sleep 60
done  

afplay "done.aif" &
date

