all: memcached

memcached: parrotstore/memcached.pbc

parrotstore/memcached.pbc: memcached/
	winxed setup.winxed memcached build
