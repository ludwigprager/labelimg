# Quick Start

This container runs tzutalin's 'labelImg' tool.
I only tested this on a linux host as I don't owe any other OS. Perhaps tell me if there are issues on Windows or Mac and how to call the container.

## How to use

Put your images in directory 'images/' and call

~~~
xhost +

docker run -ti --rm \
	-e DISPLAY=$DISPLAY \
	--device=/dev/video0:/dev/video0 \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $DIR/images/:/images/ \
	ludwigprager/labelimg:1
~~~

## Credit

Credit goes to darrenl/tzutalin and his labelImg tool. Thanks to him for his effort.
However, I did not understand the docker container he provides and created this simpler version.
