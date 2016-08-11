#!/bin/bash
# Toggle RatPoison's padding
if ps ax | grep -v grep | grep conky >/dev/null
then
    # If Trayer is running, kill it and remove RatPoison's padding.
    killall conky
    ratpoison -c "set padding 0 0 0 0"
else
    # Otherwise, reset the padding to normal and restart conky.
    ratpoison -c "set padding 0 0 0 16"
    conky &
fi
