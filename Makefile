all: memcached mongodb

clean: clean_memcached clean_mongodb

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

mongodb: mongocdriver mongodb/*.winxed mongodb/pmc/*.pmc mongodb/include/*.h mongodb/mongo-c-driver/*
	winxed setup.winxed mongodb build

mongocdriver:
	scons --directory=./mongodb/mongo-c-driver/

clean_mongodb:
	winxed setup.winxed mongodb clean

install_mongodb:
	winxed setup.winxed mongodb install



