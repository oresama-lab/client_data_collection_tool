@echo off

call .\get_date4filename.bat

psr /start /sc 1 /maxsc 100 /gui 1 /output "%default_dir%\psr_%filename%.zip"