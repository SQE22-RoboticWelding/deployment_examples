# build image
docker build -t niryo_one_test:0.4 .

# allow docker to access host system's GUI
# to use xhost "brew install --cask xquartz"
# start xhost "xhost +localhost"
xhost +local:docker

# run container with image built above and access to host system's GUI
docker run -d --name "niryo_one_test_1" --net=host --env="DISPLAY=host.docker.internal:0" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" niryo_one_test:0.4 bash -c "sleep infinity"

docker cp ./sample_welding_sequence.py niryo_one_test_1:/root/sample_welding_sequence.py

