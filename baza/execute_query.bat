@echo off
set "PGPASSWORD=msc_2020_tester"
set "PGCLIENTENCODING=UTF8"
psql -U msc_2020_tester -d msc_2020 -f %1
set "PGPASSWORD="