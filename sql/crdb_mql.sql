CREATE DATABASE mysqldb02
	CHARACTER SET utf8
	COLLATE utf8_bin ;

CREATE USER 'mysqldbuser'@'%' IDENTIFIED BY 'mysqldbpwd';

GRANT ALL PRIVILEGES ON mysqldb02.* TO 'mysqldbuser'@'%';

