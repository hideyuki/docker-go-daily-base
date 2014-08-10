# docker-go-dialy-infra

===

Docker image for infra layer

# Build

```
$ docker build -t hideyuki/go-daily-infra:0.1 ./
``` 

# Run

```
$ docker run -i -t --name daily hideyuki/go-daily-infra:0.1 /bin/bash
root@289241d88367:/# 
```

# Push to Docker Hub

```
$ docker login    # if you need
$ docker push hideyuki/go-daily-infra:0.1
```