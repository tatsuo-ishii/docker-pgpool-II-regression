How to build pgpool-II 3.3 stable rpms with PostgreSQL 9.3.
==================

### 1. Build docker image

```
	sudo docker build -t pgpool2_33_pg93 .
```

### 2. Run docker container

```
	sudo docker run --privileged -i -v /home/yourname/volum:/var/volum -t pgpool2_33_pg93
```