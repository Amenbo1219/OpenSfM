docker run --rm -it  \
	-p 8080:8080 \
	-i --expose=8080 \
	-v ./../data:/workspace\
	-e DISPLAY=$DISPLAY \
       	--net host \
       	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v ./data:/source/OpenSfM/data \
       	-v $HOME/.Xauthority:/root/.Xauthority \
	--shm-size="96gb" \
	--gpus device=1 \
	opensfm:latest


