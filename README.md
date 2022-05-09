# deployment_examples


## How to run?
Choose on which distro you want to run: Melodic or Kinetic (older)
Execute `setup_{distro}.sh`.
Once the launcher has completed run the following to bash into the docker container and launch the simulator.
Note: You should see an opened simulator window with the niryo_one robot visualized by now.

```bash
docker exec -it niryo_one_{distro}_dev bash
# in the container bash shell
roslaunch niryo_one_bringup desktop_rviz_simulation.launch
```

Once the simulator has started execute the following in the container from another bash shell in the container.

```bash
docker exec -it niryo_one_{distro}_dev bash
python ~/sample_welding_sequence.py
```

The simulated robot arm should move now.

