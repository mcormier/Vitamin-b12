#!/bin/bash

SCRIPTLOC=`dirname $0`
source $SCRIPTLOC/functions.sh

MINUTES=`parseParam $1`
runLoop $MINUTES

playEndSound 
