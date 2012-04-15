ParrotStore is a project for connecting the Parrot Virtual Machine (PVM) to a
variety of storage mechanisms, including 3rd party storage and persistance
mechanisms, caches, and databases.

ParrotStore requires Parrot, Winxed and Rosella. Make sure you have all these
things built and installed on your system.

## Memcached

To build memcached library:

    make memcached
    make install_memcached

This adds "parrotstore/memcached.pbc" to your lib directory

## MySQL

You must have `libmysqlclient` installed on your machine in a standard place.
Debian users can probably use something like:

    apt-get install libmysqlclient-dev

To build the MySQL bindings:

    make mysql
    make install_mysql

# MongoDB

You must have the MongoDB C Driver installed on your system. Here's the
incantation I used to get it, your mileage may vary:

    git clone https://github.com/mongodb/mongo-c-driver.git mongo-c-driver
    cd mongo-c-driver
    git checkout v0.5
    scons
    make install

I do not know how the API changes across versions, but version 0.5 seems to work
well enough and is what I am testing against locally.

To build the MongoDB bindings:

    make mongodb
    make install_mongodb


