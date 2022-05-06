# deployment_examples


## How to run?
Execute `setup.sh`.
Once the launcher has completed run the following to bash into the docker container.
Note: You should see an opened simulator window with the niryo_one robot visualized by now.

```bash
docker exec -it niryo_one_test_1 bash
```

Once bashed into the docker container you must execute a command sequence - here written into a script.

```bash
python ~/sample_welding_sequence.py
```

The simulated robot arm should move now.

