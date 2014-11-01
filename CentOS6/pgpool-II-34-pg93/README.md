How to run regression test
==================

### 1. Build docker image

```
	sudo docker build -t pgpool2_34_pg93 .
```

### 2. Run docker container to run regression test

```
	sudo docker run --privileged -i -v /home/yourname/volum:/var/volum -t pgpool2_34_pg93
```