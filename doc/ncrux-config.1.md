=============
 ncrux-config
=============

---------------------------------------------------------
Menu driven tool to configure build settings of a project
---------------------------------------------------------

:Date:   2 Jun 2016
:Version: 0.2.0
:Manual section: 1
:Manual group: nCrux Configuration Tool


SYNOPSIS
========
ncrux-config menu   config_file [config_source]

ncrux-config menu-n config_file [config_source]

ncrux-config menu-g config_file [config_source]

ncrux-config menu-q config_file [config_source]

ncrux-config gen    config_file output_file

ncrux-config merge  config_file config_fragment


DESCRIPTION
===========
A tool to configure build settings of a project using menu driven interface and to generate corresponding source code to be used in languages like C, Go, Python, PHP, Perl etc. This tool is based on kconfig found in Linux kernel sources.

OPTIONS
=======
menu    Start terminal based menu (classic)

menu-n  Start terminal based menu (new)

menu-g  Start gtk based menu

menu-q  Start Qt based menu

gen     Generate source code

merge   Merge given configuration fragment into base configuration file.

config_file
 File containing current selection of build settings. In case if user saves the modified settings, this file gets overwritten with new settings.

config_source
 Source file for the menu interface. File name "Nconfig" is assumed, if not given.

config_fragment
 File containing partial configuration settings.

output_file
 File to which generated output needs to be writtem. File extension of output_file is recognized and appropriate code is generated. Recognized file extensions are:

  **h**		C source header file

  **xml**	XML file

  **pl**	Perl source file

  **py**	Python source file

  **go**	Golang source file

  **php**	PHP source file

EXAMPLES
========
ncrux-config menu simple.conf

ncrux-config menu-n simple.conf Nconfig

ncrux-config menu-g simple.conf

ncrux-config menu-q simple.conf Nconfig

ncrux-config gen simple.conf simple.h

ncrux-config gen simple.conf simple.xml

ncrux-config gen simple.conf simple.pl

ncrux-config gen simple.conf simple.py

ncrux-config gen simple.conf simple.go

ncrux-config gen simple.conf simple.php

ncrux-config merge simple.conf other-feature.conf

HOMEPAGE
========
More information about ncrux-config project can be found at <http://www.ncrux.com/project/ncrux-config/>

AUTHOR
======
ncrux-config package is developed by nCrux <http://www.ncrux.com/>.

This documentation is done by Aditi <aditi@ncrux.com>.

REPORTING BUGS
==============
You can report bugs at <https://github.com/ncrux/ncrux-config/issues>

COPYRIGHT
=========
Copyright © 2016 nCrux. 
License: GNU GPL version 2.
This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.


