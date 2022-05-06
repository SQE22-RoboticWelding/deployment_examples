# deployment_examples


## How to run?
Execute `setup.sh`.
Once the launcher has completed run the following to bash into the docker container.
Note: You should see an opened simulator window with the niryo_one robot visualized by now.

```bash
docker exec -it niryo_one_test_1 bash
# in the container bash shell
roslaunch niryo_one_bringup desktop_rviz_simulation.launch
```

Once the simulator has started execute:

```bash
python ~/sample_welding_sequence.py
```

The simulated robot arm should move now.

