all: memcached mysql mongodb sqlite3

clean: clean_memcached clean_mongodb clean_mysql clean_sqlite

install: install_memcached install_mysql install_mongodb install_sqlite

## Memcached

memcached: parrotstore/memcached.pbc

clean_memcached:
	winxed setup.winxed memcached clean

install_memcached:
	winxed setup.winxed memcached install

parrotstore/memcached.pbc: memcached/
	winxed setup.winxed memcached build

## MongoDB

mongodb:
	winxed setup.winxed mongodb build

clean_mongodb:
	winxed setup.winxed mongodb clean

install_mongodb:
	winxed setup.winxed mongodb install

## MySQL

mysql: dynext/mysql_group.so

dynext/mysql_group.so: mysql/pmc/mysqldbcontext.pmc mysql/pmc/mysqldatatable.pmc mysql/pmc/mysqldatarow.pmc mysql/include/ps_mysql.h
	winxed setup.winxed mysql build

clean_mysql:
	winxed setup.winxed mysql clean

install_mysql:
	winxed setup.winxed mysql install

## SQLite

sqlite3: dynext/sqlite3_group.so

dynext/sqlite3_group.so: sqlite3/pmc/sqlite3dbcontext.pmc sqlite3/pmc/sqlite3datatable.pmc sqlite3/pmc/sqlite3datarow.pmc sqlite3/include/ps_sqlite3.h
	winxed setup.winxed sqlite3 build

clean_sqlite3:
	winxed setup.winxed sqlite3 clean

install_sqlite3:
	winxed setup.winxed sqlite3 install

