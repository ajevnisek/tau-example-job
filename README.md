# tau-example-job
This is an example showing how to create a docker image for a specific train 
task.
 
There are (at least) two methods to work:

(1) The docker image contains all the running specifications (including 
which files ran, conda version, python versions etc.)

(2) The docker image gives you a running framework and a `.sh` allows you to 
create runs.

Method (1) is preferable for production purposes and when your paper is done 
where you'd like to maintain reproducible results.
Method (2) is preferable for development.

We will present method (2) here. Method (1) can be induced from method (1) - 
simply put all your commands in the `Dockerfile` under a `RUN` prefix.

# Setup
Create a directory shared with the docker

# Build docker Image
```bash
docker image build -t ajevnisek/tau-example-job .
```


# Run docker Container
```bash
docker run --rm --name container-demo -dit ajevnisek/tau-example-job bash
```
## Debug
### watch logs
```bash
docker logs container-demo -f
```

### bash to the container
```bash
docker exec -it container-demo bash
```


# Misc
Clear all docker cache:
```bash
docker system prune -a
```

# Run this image with run:ai:
```bash
runai submit -g 1 --name avidan-container-demo -i ajevnisek/avidan-docker-cuda-ubuntu-16.04-conda -v ~/Desktop/sandbox/avidan-docker/from_container:/results --pvc=storage:/storage
```