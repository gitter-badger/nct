=============
 nconf
=============

---------------------------------------------------------
Menu driven tool to configure build settings of a project
---------------------------------------------------------

:Date:   9 Jun 2016
:Version: 0.2.0
:Manual section: 1
:Manual group: nCrux Configuration Tool


SYNOPSIS
========
	nconf menu   config_file [config_source]

	nconf menu-n config_file [config_source]

	nconf menu-g config_file [config_source]

	nconf menu-q config_file [config_source]

	nconf gen    config_file output_file

	nconf merge  config_file config_fragment


DESCRIPTION
===========
A tool to configure build settings of a project using menu driven interface and to generate corresponding source code to be used in languages like C, Go, Python, PHP, Perl, JavaScript etc. This tool is based on kconfig found in Linux kernel sources.

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

  **rb**	Ruby source file

  **js**	JavaScript source file


EXAMPLES
========

Load configuration settings from simple.conf if present and display ncurses
based configuration menu based on config_source file Nconfig and write the
changes to simple.conf::

	nconf menu simple.conf

Display ncurses based newer menu, read and write configuration changes to simple.conf::

	nconf menu-n simple.conf Nconfig

Display Gtk based menu, read and write configuration changes to simple.conf::

	nconf menu-g simple.conf

Display Qt based menu, read and write configuration changes to simple.conf::

	nconf menu-q simple.conf Nconfig

Generate C header file based on configuration settings read from simple.conf::

	nconf gen simple.conf simple.h

Generate XML file based on configuration settings read from simple.conf::

	nconf gen simple.conf simple.xml

Generate Perl source file based on configuration settings read from simple.conf::

	nconf gen simple.conf simple.pl

Generate Python source file based on configuration settings read from simple.conf::

	nconf gen simple.conf simple.py

Generate Golang source file based on configuration settings read from simple.conf::

	nconf gen simple.conf simple.go

Generate PHP source file based on configuration settings read from simple.conf::

	nconf gen simple.conf simple.php

Generate Ruby source file based on configuration settings read from simple.conf::

	nconf gen simple.conf simple.rb

Generate JavaScript source file based on configuration settings read from simple.conf::

	nconf gen simple.conf simple.js

Merge configuration fragments present in other-feature.conf into simple.conf::

	nconf merge simple.conf other-feature.conf

HOMEPAGE
========
More information about nconf project can be found at <http://www.ncrux.com/project/nconf/>

AUTHOR
======
nconf package is developed by nCrux <http://www.ncrux.com/>.

This documentation is done by Aditi <aditi@ncrux.com>.

REPORTING BUGS
==============
You can report bugs at <https://github.com/ncrux/nconf/issues>

COPYRIGHT
=========
Copyright © 2016 nCrux. 
License: GNU GPL version 2.
This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.


