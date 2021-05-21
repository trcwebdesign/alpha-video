@echo off
set /p id=Enter subdomain: 
echo %id%
lt.cmd -p 5000 -s %id%