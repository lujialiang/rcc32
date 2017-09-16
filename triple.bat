rem Builds on Borland C++ 4.02 and Borland PowerPack.

set link=bcc32 -WX -ercc

bcc32 -w- -WX -A -c *.c
%link% *.obj
move/y *.obj rcc1
copy/y rcc.exe rcc1
call test

call lccn alloc bind dag decl enode error event expr gen init input
call lccn lex list main mips null output prof profio
call lccn simp sparc stmt string sym symbolic trace tree types x86
%link% *.obj
del *.obj
move/y *.s rcc2
copy/y rcc.exe rcc2
call test

call lccn alloc bind dag decl enode error event expr gen init input
call lccn lex list main mips null output prof profio
call lccn simp sparc stmt string sym symbolic trace tree types x86
%link% *.obj
del *.obj
move/y *.s rcc3
copy/y rcc.exe rcc3
fc /a rcc2\*.s rcc3\*.s
call test
