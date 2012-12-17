@echo off
@echo+
@echo --------------------------------------------------------------------------------
@echo Part 1 Installation
@echo --------------------------------------------------------------------------------
@echo+
@echo Press Ctrl+C to exit or
pause ...


@echo ----------------------------------------------------------------
@ECHO STEP 1/4: Updating User Path ...
@echo ----------------------------------------------------------------
path=%path%;%CD%\utils\bin;C:\RailsInstaller\Git\bin;C:\RailsInstaller\Ruby1.9.2\bin
@echo+
@echo+


@echo ----------------------------------------------------------------
@ECHO STEP 2/4: Installing postgresql ...
@echo ----------------------------------------------------------------
postgresql-9.2.2-1-windows.exe --mode unattended --superpassword Webe$rules8552
@echo+
@echo+

@echo ----------------------------------------------------------------
@ECHO STEP 3/4: Installing Ruby and Rails ...
@echo ----------------------------------------------------------------
railsinstaller-2.1.0 /silent
@echo+
@echo+

cd docus
call bundle install --path=vendor/cache

