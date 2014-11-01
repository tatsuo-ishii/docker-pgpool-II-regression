#! /bin/bash
# 1GB shared memory
umount /dev/shm
mount -t tmpfs -o rw,nosuid,nodev,noexec,relatime,size=256M tmpfs /dev/shm
sysctl -w kernel.shmmax=1063256064
sysctl -w kernel.shmall=259584
ipcs -l
service sshd start
su postgres < /tmp/regress.sh
mkdir /var/volum/$PGPOOL_BRANCH
cp -rp $PGHOME/pgpool2/src/test/regression /var/volum/$PGPOOL_BRANCH
