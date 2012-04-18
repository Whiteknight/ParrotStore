all: memcached mysql mongodb sqlite3

clean: clean_memcached clean_mongodb clean_mysql clean_sqlite

install: install_memcached install_mysql install_mongodb install_sqlite

## Memcached

memcached: parrotstore/memcached.pbc

clean_memcached:
	winxed src/setup.winxed memcached clean

install_memcached:
	winxed src/setup.winxed memcached install

parrotstore/memcached.pbc:
	winxed src/setup.winxed memcached build

## MongoDB

mongodb:
	winxed src/setup.winxed mongodb build

clean_mongodb:
	winxed src/setup.winxed mongodb clean

install_mongodb:
	winxed src/setup.winxed mongodb install

## MySQL

mysql:
	winxed src/setup.winxed mysql build

clean_mysql:
	winxed src/setup.winxed mysql clean

install_mysql:
	winxed src/setup.winxed mysql install

## SQLite

sqlite3:
	winxed src/setup.winxed sqlite3 build

clean_sqlite3:
	winxed src/setup.winxed sqlite3 clean

install_sqlite3:
	winxed src/setup.winxed sqlite3 install

