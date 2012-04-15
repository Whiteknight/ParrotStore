all: memcached mysql mongodb

clean: clean_memcached clean_mongodb clean_mysql

install: install_memcached install_mysql install_mongodb

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

# MySQL

mysql: dynext/mysql_group.so

dynext/mysql_group.so: mysql/pmc/mysqldbcontext.pmc mysql/pmc/mysqldatatable.pmc mysql/pmc/mysqldatarow.pmc mysql/include/ps_mysql.h
	winxed setup.winxed mysql build

clean_mysql:
	winxed setup.winxed mysql clean

install_mysql:
	winxed setup.winxed mysql install


