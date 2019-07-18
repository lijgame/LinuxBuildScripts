# run first: sudo xhost +local:root
docker run -it --name=lijgame-dev --runtime=nvidia -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -v $XAUTHORITY:/.xauthority -e XAUTHORITY=/.xauthority -v ~/codes:/root/codes -w /root/codes lijgame/dev
