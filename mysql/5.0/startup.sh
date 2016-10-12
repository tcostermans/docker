#!/bin/bash

if [ ! -f /usr/local/mysql/data/ibdata1 ]; then

	cd /usr/local/mysql && rm -rf data &&  ./scripts/mysql_install_db --user=mysql

	/usr/local/mysql/bin/mysqld_safe &
	sleep 10s

	echo "CREATE USER 'docker'@'%' IDENTIFIED BY 'docker'; GRANT ALL PRIVILEGES ON *.* TO 'docker'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;" | mysql -h 127.0.0.1 -u root
	
	killall mysqld
	sleep 10s
fi

/usr/local/mysql/bin/mysqld_safe