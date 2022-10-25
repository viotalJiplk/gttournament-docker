#!/bin/bash

mariadb --password=DockerInternal < /init/init.sql
mariadb --password=DockerInternal < /init/schools.sql