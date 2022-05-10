# build image
docker build -t niryo_one_noetic_dev:0.4 noetic

# allow docker to access host system's GUI
xhost +local:docker

# run container with image built above and access to host system's GUI
docker run -d --name "niryo_one_noetic_dev" --net=host -e DISPLAY=host.docker.internal:0.0 -e LIBGL_ALWAYS_INDIRECT=0  --volume="$HOME/.Xauthority:/root/.Xauthority:rw" niryo_one_noetic_dev:0.4 bash -c "sleep infinity"

docker cp sample_welding_sequence.py niryo_one_noetic_dev:/root/sample_welding_sequence.py

