# build image
docker build -t niryo_one_test:0.4 .

# allow docker to access host system's GUI
xhost +local:docker

# run container with image built above and access to host system's GUI
docker run -d --name "niryo_one_test_1" --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" niryo_one_test:0.4 bash -c "sleep infinity"

docker cp ./sample_welding_sequence.py niryo_one_test_1:~/
docker exec -it niryo_one_test_1 "roslaunch niryo_one_bringup desktop_rviz_simulation.launch"

