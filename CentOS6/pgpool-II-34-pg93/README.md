How to run regression test
==================

### 1. Build docker image

```
	sudo docker build -t pgpool2_34_pg93 .
```

### 2. Run docker container to run regression tests with V3_4_STABLE branch head

```
	sudo docker run --privileged -v /home/yourname/volum:/var/volum --rm=true -t pgpool2_34_pg93
```

### 3. Run docker container to run regression tests with master branch head

```
	sudo docker run -e PGPOOL_BRANCH=master --privileged -v /home/yourname/volum:/var/volum --rm=true -t pgpool2_34_pg93
```

* *--privileged* is mandatory because it does some magics to increase shared memory available in the container. Please take a look at *start.sh* for more details.

* *-v* is needed if you want to examine the regression result details later. Please note that the regression results consume about 2GB of storage.

* *--rm=true* will remove the container after the containter stops. If you want to keep the container, just remove the option.

What the container does while running are:

1. Check out specified branch of repository.
2. Run git pull to sync with remote repository.
3. Copy the source to /var/volume/*branch* so that the regression results can be examined later on.
4. Run the regression tests.