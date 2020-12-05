@echo off
SET "HOME_PATH=%~dp0"
echo Motorola Science Cup - Bazy danych i SQL
echo Ponizszy skrypt wprowadzi teraz modyfikacje
echo dla bazy danych 'msc_2020' oraz uzytkownikow 'msc_2020_admin' oraz 'msc_2020_tester'
echo Jezeli nie chcesz kontynuowac
echo mozesz przerwac dzialanie skryptu poprzez wcisniecie CTRL + C
echo.

set /p database_admin="Podaj nazwe administratora bazy danych ('postgres' dla domyslnej instalacji): "
echo.

echo Odtworzenie bazy danych
call "%HOME_PATH%\baza\init_db.bat" %database_admin% || GOTO :ERROR
echo.

echo Wczytanie przykladowych danych
call "%HOME_PATH%\baza\load_data.bat" || GOTO :ERROR
echo.

echo Nadanie indeksow
call "%HOME_PATH%\baza\load_index.bat" "%HOME_PATH%\zapytania\index.sql" || GOTO :ERROR
echo.

:ASK_ABOUT_NUMBER
set /p "id=Podaj numer zadania lub q aby wyjsc: "
if /I %id%==q GOTO :EXIT
if /I %id%==quit GOTO :EXIT
call "%HOME_PATH%\baza\execute_query.bat" "%HOME_PATH%\zapytania\%id%.sql"
GOTO :ASK_ABOUT_NUMBER

:EXIT
EXIT /B 0

:ERROR
echo Wystapil problem podczas przetwarzania zapytania
EXIT /B -1