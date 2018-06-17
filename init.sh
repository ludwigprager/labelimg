#!/bin/bash

# You might include the following in your .bashrc file. Then you can always start the app by saying $LABELIMG
#
# . <path to labelimg repo>/init.sh


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

xhost +

LABELIMG="docker run -ti --rm \
-e DISPLAY=$DISPLAY \
--device=/dev/video0:/dev/video0 \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $DIR/images/:/images/ \
ludwigprager/labelimg:1 \
"
