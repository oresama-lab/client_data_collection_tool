@echo off

call .\_get_date4filename

cd %default_dir%
netsh trace start capture=yes traceFile="%filename%.etl"

pause