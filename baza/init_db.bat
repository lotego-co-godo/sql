@echo off
set "PGCLIENTENCODING=UTF8"
psql -U %1 -f "%~dp0%\init.sql"