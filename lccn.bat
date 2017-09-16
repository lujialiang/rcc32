@echo off
:loop
if "%1"=="" goto out
	lcc -B.\ -S %1.c
	call dolcc.bat
	lcc -c %1.s
	call dolcc.bat
shift
goto loop
:out
