all: memcached mongodb

clean: clean_memcached clean_mongodb

## Memcached

memcached: parrotstore/memcached.pbc

clean_memcached:
	winxed setup.winxed memcached clean

parrotstore/memcached.pbc: memcached/
	winxed setup.winxed memcached build

## MongoDB

mongodb: mongodb/*.winxed mongodb/pmc/*.pmc mongodb/include/*.h mongodb/mongo-c-driver/*
	winxed setup.winxed mongodb build

clean_mongodb:
	winxed setup.winxed mongodb clean



