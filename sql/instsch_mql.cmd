
set mysql_dir=E:\Work_em_local\ProgFiles\MySQL\MySQLSvr80\bin

%mysql_dir%\mysql --user=root mysql <crdb_mql.sql >log_crdb.txt 2>&1

%mysql_dir%\mysql -f --user=mysqldbuser --password=mysqldbpwd mysqldb02 <demo_em_db_mysql.sql >log_demo_em_db_mysql.txt 2>&1
