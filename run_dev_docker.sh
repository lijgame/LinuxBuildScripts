# run first: sudo xhost +local:root
docker run -it --name=lijgame-dev --runtime=nvidia -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/codes:/root/codes -w /root/codes -e DISPLAY=unix:1 lijgame/dev
#docker run -it --runtime=nvidia -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/codes:/root/codes -w /root/codes -e DISPLAY=unix:0 lijgame/dev

