# vgdb

VGdb is a perl application that enables vim as the front end of a debugger
like gdb and perldb.
It both works on MS Windows and Linux. It both works in gvim and vim.

It opens a VGDB window in vim that allows user to type gdb command directly, 
and gdb output is redirected to this windows.

MSVC-style shortcuts are defined by default (like F5/F10...), and you can 
define how to preview structure like MSVC auto expand feature.

Screenshot:
![Screenshot](https://github.com/skyshore2001/vgdb-vim/raw/master/demo/screenshot.png)

A flash demo in my package helps you quickly go through the vgdb features.

**For detail, read this vim help document: __README__.txt**

## Install

On Linux, run vgdb_install and specify path.

    #cp ./vgdb /usr/local/bin/
    #chmod a+x /usr/local/bin/vgdb
    #cp ./libvgdbc.so /usr/lib64
    #cp ./vgdb-vim $VIMFILES/

On MS Windows, you need install Perl (and of course gcc/gdb).
   1. install strawberry-perl-5.26.0.2-64bit.msi and make sure perl.exe in the default search path;
   2. install tdm-gcc-5.1.0-3.exe and make sure gdb.exe in the default search path;
   3. copy vgdb vgdb.bat vgdb.vbs vgdbc.dll to your vim.exe/gvim.exe directory and make sure gvim.exe in the default search path;
   4. copy vgdb-vim to $VIMFILES directory;

Note: 
- gvim MUST in the default search path.

My dev environment:
- Windows: 
 - strawberry-perl-5.26.0.2-64bit.msi
 - tdm-gcc-5.1.0-3.exe
- Linux:
 - Perl 5.10.0 for x86_64-linux
 - Gdb 7.3 x86_64-suse-linux

## Quick usage

In vim or gvim, run :VGdb command, e.g.

	:VGdb
	:VGdb cpp1
	:VGdb cpp1 --tty=/dev/pts/4

To debug a perl program:

	:VGdb hello.pl

The following shortcuts is applied that is similar to MSVC: 

	<F5> 	- run or continue
	<S-F5> 	- stop debugging (kill)
	<F10> 	- next
	<F11> 	- step into
	<S-F11> - step out (finish)
	<C-F10>	- run to cursor (tb and c)
	<F9> 	- toggle breakpoint on current line
	<C-F9> 	- toggle enable/disable breakpoint on current line
	\ju or <C-S-F10> - set next statement (tb and jump)
	<C-P> 	- view variable under the cursor (.p)

