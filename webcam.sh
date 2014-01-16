#!/bin/bash

/usr/bin/avconv -threads 2 \
                -f video4linux2 -r 5 -vb 400k -i /dev/video0 \
                -f alsa -ac 1 -ar 22050 -ab 64 -i plughw:1,0 \
                -f flv -pix_fmt yuv420p -ar 22050 -ab 64 -vb 400k -r 5 \
                -metadata streamName='webcam' \
                tcp://127.0.0.1:6666
