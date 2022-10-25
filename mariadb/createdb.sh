#!/bin/bash

mariadb --password=$MARIADB_ROOT_PASSWORD < /init/init.sql
mariadb --password=$MARIADB_ROOT_PASSWORD < /init/schools.sql