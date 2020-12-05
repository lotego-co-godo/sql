@echo off
set "PGPASSWORD=msc_2020_admin"
psql -U msc_2020_admin -d msc_2020 -f "%~dp0%\data.sql"
set "PGPASSWORD="