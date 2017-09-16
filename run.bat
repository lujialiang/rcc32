@echo off

set compare=fc /a

cd ..\tst
lcc -B..\src\ -S -o ..\x86\dos\tst\%1.s -Wf-errout=..\x86\dos\tst\%1.2 %1.c
call dolcc.bat

cd ..\x86\dos\tst
lcc -o %1.exe %1.s
call dolcc.bat

%1.exe <..\..\..\tst\%1.0 >%1.1
%compare% ..\..\..\tst\%1.2 %1.2
%compare% %1.sbk %1.s
%compare% %1.1bk %1.1
cd ..\..\..\src

@echo on

