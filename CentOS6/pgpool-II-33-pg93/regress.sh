#! /bin/bash
cd /tmp
#gcc test.c
#./a.out
cd $PGHOME/pgpool2
git checkout $PGPOOL_BRANCH
git pull
./configure --with-openssl --with-pgsql=/usr/pgsql-${POSTGRESQL_VERSION}
cd test/regression
./regress.sh -p /usr/pgsql-${POSTGRESQL_VERSION}/bin -j /usr/share/$JDBC_DRIVER
