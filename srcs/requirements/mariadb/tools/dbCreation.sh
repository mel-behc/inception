#!/bin/bash

service mysql start 

service mysql start 
echo "CREATE DATABASE IF NOT EXISTS ${MYSQL_DB_NAME};" | mysql
echo "CREATE USER IF NOT EXISTS '$MYSQL_USR'@'%' IDENTIFIED BY '$MYSQL_PWD';" | mysql
echo "GRANT ALL PRIVILEGES ON $MYSQL_DB_NAME.* TO '$MYSQL_USR'@'%' ;" | mysql
echo "ALTER USER '$MYSQL_ROOT_USR'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PWD';" | mysql
echo "FLUSH PRIVILEGES;" | mysql

mysqladmin -u "$MYSQL_ROOT_USR" -p"$MYSQL_ROOT_PWD" shutdown