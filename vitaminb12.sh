#!/usr/bin/bash

date

sleep 60
# 24 min
afplay clocktick.m4a &
sleep 120

# 22 min
afplay clocktick.m4a &
sleep 120

# 20 min
afplay clocktick.m4a &
osascript -e 'say "20 minutes left"' &
sleep 120 

# 18 min
afplay clocktick.m4a &
sleep 120 

# 16 min
afplay clocktick.m4a &
sleep 60 

# 15 min
osascript -e 'say "15 minutes left"' &
sleep 60

# 14 min
afplay clocktick.m4a &
sleep 120 

# 12 min
afplay clocktick.m4a &
sleep 120 

# 10 min
afplay clocktick.m4a &
osascript -e 'say "10 minutes left"' &
sleep 120 

# 8 min
afplay clocktick.m4a &
sleep 120 

# 6 min
afplay clocktick.m4a &
sleep 60 

# 5 min
osascript -e 'say "5 minutes left"' &
sleep 60

# 4 min
afplay clocktick.m4a &
sleep 120 

# 2 min
afplay clocktick.m4a &
sleep 120 


afplay "done.aif" &

date
