#Prerequisition
- PostgreSQL 12.x installed
- psql on the PATH to be able to execute it from command line
- account and password with administrative privileges
- close all active connections to msc_2020 database before you call run.bat

#Prepare database and eXecute query
- open command line
- call run.bat
- follow instructions from script

#FILES
- run.bat create database, load data, add indexes, execute query
- baza/data.sql - example data
- baza/init.sql - initialization script that drop old database, create new one, create tables and add permissions
- baza/relations.png - diagram with schema of database
- zapytania/index.sql - you can put here your indexes
- zapytania/*.sql - you should put here your queries

#Known issue
- 'ERROR:  database "msc_2020" is being accessed by other users'
you need to close all active connections to msc_2020 database before you call run.bat command
if you already close all connections and it doesn't work, try to restart postgresql service
