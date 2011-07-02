#!/bin/bash

SCRIPTLOC=`dirname $0`
source $SCRIPTLOC/functions.sh

MINUTES=`parseParam $1`
if [ $? -ne 0 ] ; then
  # User hit the cancel button
  exit 0
fi

runLoop $MINUTES

playEndSound 
