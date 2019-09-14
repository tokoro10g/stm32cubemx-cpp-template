#!/bin/bash
pipe=itm.fifo

openocd &
rm -f $pipe
if [[ ! -p $pipe ]]; then
   	mkfifo $pipe
fi

while true
	do
    	if read line <$pipe; then
        	echo $line
    	fi
done
echo "Reader exiting"
