GDB Vim Frontend
=================
# Intro

VGdb is a gdb frontend plugin for Vim.

It both works on MS Windows and Linux. 

It both works in gvim and vim.

It opens a VGDB window in vim that allows user to type gdb command directly, 
and gdb output is redirected to this windows.

Screenshot:
![Screenshot](https://github.com/larrupingpig/vgdb-vim/blob/master/vgdb-vim.png)

**For detail, read this vim help document vgdb-vim/doc/vgdb.txt**

## Installation

On Linux, run vgdb_install and specify path.

    #cd vgdb-vim/src
    #make, you will get libvgdbc.so
    #cp ./libvgdbc.so /usr/lib64
    #cp vgdb-vim/bin/vgdb /usr/local/bin/
    #chmod a+x /usr/local/bin/vgdb
    #cp ./vgdb-vim $VIMFILES/

On MS Windows, you need install Perl (and of course gcc/gdb).
   1. install strawberry-perl-5.26.0.2-64bit.msi and make sure perl.exe in the default search path
   2. install tdm-gcc-5.1.0-3.exe and make sure gdb.exe in the default search path
   3. install sed-4.2.1-bin.zip and make sure sed.exe in the default search path
   4. open windows command line cmd.exe as administrator privileges
   5. cd vgdb-vim/src
   6. mingw32-make, you will get vgdbc.dll
   ![](https://github.com/larrupingpig/vgdb-vim/blob/master/mingw32-make.png)
   4. copy vgdb vgdb.bat vgdbc.dll to your vim.exe/gvim.exe directory and make sure gvim.exe in the default search path
   5. copy vgdb-vim to $VIMFILES directory

Note: 
- gvim MUST in the default search path.

My dev environment:
- Windows: 
 - strawberry-perl-5.26.0.2-64bit.msi
 - tdm-gcc-5.1.0-3.exe
 - sed-4.2.1-bin.zip(http://sourceforge.net/projects/gnuwin32/files//sed/4.2.1/sed-4.2.1-bin.zip/download)
 - Vim 8.0 Included patches: 1-1532 (https://tuxproject.de/projects/vim/)
- Linux:
 - Perl perl-5.24.3-389.fc25.x86_64
 - Gdb 7.12.1-48.fc25
 - Vim vim-X11-8.0.1171-1.fc25.x86_64

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
    <TAB>   - trigger complete 

## Thanks
   
   (https://github.com/skyshore2001/vgdb-vim)
