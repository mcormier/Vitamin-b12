SCRIPTLOC=`dirname $0`

function parseParam {
  #
  # When this schell script is called
  # as an OS application the first parameter
  # is the process serial number.
  # (i.e. -psn_0_159783)
  #
  # Reference
  # http://forums.macrumors.com/archive/index.php/t-69397/t-207344.html
  #
  #
  if [[ $1 == -psn* ]] ; then
    # Script called by double clicking app
    # Get the minute length with an applescript
    getTimeLength
    return
  fi

  # Default setting
  VAL=25
  if [  ! -z "$1"   ] ; then
    # arg is an integer
    expr $1 + 1  &> /dev/null
    if [ $? = 0 ] ; then
      expr $1 - 1 &> /dev/null
      VAL=$1
    fi
  fi
  echo -n $VAL

}


function evenLogic {
  afplay ${SCRIPTLOC}/../Resources/clocktick.m4a &
}

function fiveLogic {
  ${SCRIPTLOC}/../Resources/say.applescript $1 &
}

# Use stdout for return value
function getTimeLength {
  # Display simple GUI with applescript
  TIME_LENGTH=`${SCRIPTLOC}/../Resources/chooseTime.applescript`
  if [ $TIME_LENGTH = "false" ] ; then
    # The user hit the cancel button
    exit
  fi

  # Convert "25 minutes" --> "25" 
  echo $TIME_LENGTH | awk '{print $1}'
}

function runLoop {
  LENGTH=$1
  let LENGTH=LENGTH-1
  sleep 60

  for (( minute=LENGTH ; minute > 0 ; minute--))
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

}


function playEndSound {
  afplay ${SCRIPTLOC}/../Resources/done.aif &
}
