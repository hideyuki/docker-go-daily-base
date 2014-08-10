# docker-go-dialy-base

===

Docker image of base settings.

This repository connect the [Docker Hub repository](https://registry.hub.docker.com/u/hideyuki/go-daily-base/) for automated build of docker image.

# Build

```
$ docker build --rm -t hideyuki/go-daily-base:0.1 ./
``` 

With no-cache flag

```
$ docker build --rm --no-cache -t hideyuki/go-daily-base:0.1 ./
``` 

# Run

Interactive

```
$ docker run -i -t --name daily -p 10022:22 hideyuki/go-daily-base:0.1 /bin/bash
root@289241d88367:/# 
```

Daemon

```
$ docker run -d --name daily -p 10022:22 hideyuki/go-daily-base:0.1
```


# Push to Docker Hub

```
$ docker login    # if you need
$ docker push hideyuki/go-daily-base:0.1
```
