# build image
docker build -t kinetic/niryo_one_kinetic_dev:0.4 kinetic

# allow docker to access host system's GUI
xhost +local:docker

# run container with image built above and access to host system's GUI
docker run -d --name "niryo_one_kinetic_dev" --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" niryo_one_kinetic_dev:0.4 bash -c "sleep infinity"

docker cp sample_welding_sequence.py niryo_one_kinetic_dev:/root/sample_welding_sequence.py

