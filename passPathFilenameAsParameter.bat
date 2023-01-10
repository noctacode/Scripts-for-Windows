@echo off
echo 1 path with filename, as string
echo %0
echo(
echo 2 path with filename
echo %~0
echo(
echo 3 drive
echo %~d0
echo(
echo 4 path+filename
echo %~f0
echo(
echo 5 filename without extension
echo %~n0
echo(
echo 6 path without drive
echo %~p0
echo(
echo 7 extension
echo %~x0
echo(
echo 8 path without filename
echo %~dp0
echo(
pause