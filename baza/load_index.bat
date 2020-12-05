@echo off
set "PGPASSWORD=msc_2020_admin"
set "PGCLIENTENCODING=UTF8"
psql -U msc_2020_admin -d msc_2020 -f %1
set "PGPASSWORD="