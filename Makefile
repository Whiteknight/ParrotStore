all: memcached mysql mongodb
	echo "MAKE ALL"

clean: clean_memcached clean_mongodb clean_mysql

install: install_memcached install_mongodb

## Memcached

memcached: parrotstore/memcached.pbc

clean_memcached:
	winxed setup.winxed memcached clean

install_memcached:
	winxed setup.winxed memcached install

parrotstore/memcached.pbc: memcached/
	winxed setup.winxed memcached build

## MongoDB

mongodb: mongodb/*.winxed mongodb/pmc/*.pmc mongodb/include/*.h dynext/mongodb_group.so

dynext/mongodb_group.so:
	winxed setup.winxed mongodb build

clean_mongodb:
	winxed setup.winxed mongodb clean

install_mongodb:
	winxed setup.winxed mongodb install

# MySQL

mysql: mysql/pmc/*.pmc mysql/include/*.h dynext/mysql_group.so

dynext/mysql_group.so:
	winxed setup.winxed mysql build

clean_mysql:
	winxed setup.winxed mysql clean

install_mysql:
	winxed setup.winxed mysql install


