# docker-fakes3


A docker container for [fakes3](https://github.com/jubos/fake-s3) with the service exposed on port 8000 and a data volume at /fakes3_data

It's on [docker-hub](https://hub.docker.com/r/fingershock/fakes3/) and [github](https://github.com/iJJi/docker-fakes3)

## tags and links

 * `latest` [(Dockerfile)](https://github.com/iJJi/docker-fakes3/blob/master/Dockerfile) [![](https://badge.imagelayers.io/fingershock/fakes3:latest.svg)](https://imagelayers.io/?images=fingershock/fakes3:latest) [![Build Status](https://travis-ci.org/iJJi/docker-fakes3.svg?branch=master)](https://travis-ci.org/iJJi/docker-fakes3)
 * `0.2.3` [(Dockerfile)](https://github.com/iJJi/docker-fakes3/blob/0.2.3/Dockerfile) [![](https://badge.imagelayers.io/fingershock/fakes3:0.2.3.svg)](https://imagelayers.io/?images=fingershock/fakes3:0.2.3) [![Build Status](https://travis-ci.org/iJJi/docker-fakes3.svg?branch=0.2.3)](https://travis-ci.org/iJJi/docker-fakes3)

## running

Get a list of available command line options
```sh
docker run -it --rm fingershock/fakes3 fakes3 --help
Commands:
  fakes3 help [COMMAND]                       # Describe available commands or one specific command
  fakes3 server -p, --port=N -r, --root=ROOT  # Run a server on a particular hostname
  fakes3 version                              # Report the current fakes3 version
```


Run the server with port 8000 exposed. In this mode, all data will be lost when the container terminates.
```sh
docker run -it --rm fingershock/fakes3
```


To persist data on a host directory so it's saved across restarts just bind mount a host directory to /fakes3_data.
```sh
docker run -it --rm -v /host/s3_data:/fakes3_data:rw fingershock/fakes3
```

