FROM mariadb

RUN mkdir init 
COPY init.sql /init/init.sql
COPY schools.sql /init/schools.sql
COPY createdb.sh /init/createdb.sh
WORKDIR /init

RUN chmod u=rwx,g=rx,o=r /init/createdb.sh

#RUN 