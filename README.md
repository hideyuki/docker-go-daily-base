# docker-go-dialy-infra

===

# build

```
$ docker build -t hideyuki/go-daily:0.1 ./
``` 

# run

```
$ docker run -i -t --name daily hideyuki/go-daily:0.1 /bin/bash
root@289241d88367:/# 
```

# push

Push to Docker Hub

```
$ docker login    # if you need
$ docker push hideyuki/go-dialy:0.1
```