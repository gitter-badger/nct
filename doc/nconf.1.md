=============
 nconf
=============

---------------------------------------------------------
Menu driven tool to configure build settings of a project
---------------------------------------------------------

:Date:   13 Jun 2016
:Version: 0.2.0
:Manual section: 1
:Manual group: nCrux Configuration Tool


SYNOPSIS
========

nconf nomenu [-m|--mode {alldef|allno|allyes|random}] [-c|--config config_file] [-i|--input config_input_file]

nconf {menu|menu-n|menu-g|menu-q} [-c|--config config_file] [-i|--input config_input_file]

nconf gen [-c|--config config_file] [-o|--output output_file]

nconf merge [-c|--config config_file] [-f|--fragment fragment_config_file]

nconf help


DESCRIPTION
===========
A tool to configure build settings of a project using menu driven interface and to generate corresponding source code to be used in languages like C, Go, Python, PHP, Perl, JavaScript etc. This tool is based on kconfig found in Linux kernel sources.

OPTIONS
=======
nomenu	Dislpay no interactive menu and generate configuration file based on mode specified.

menu    Start terminal based menu (classic)

menu-n  Start terminal based menu (new)

menu-g  Start gtk based menu

menu-q  Start Qt based menu

gen     Generate source code

merge   Merge given configuration fragment into base configuration file.

help	Display command usage information.

-m mode_str, --mode mode_str
 This option is valid only for "nomenu" subcommand. Following are the modes supported. The mode "alldef" is assumed if this option is not given.

  **alldef**	Select all default values for each configuration element.

  **allno**	Unselect all boolean and tristate configuration elements.

  **allyes**	Select all boolean and tristate configuration elements.

  **random**	Randomly select boolean and tristate configuration elements.

-c config_file, --config config_file
 File containing current selection of configuration settings. The file ".nconf" is assumed if this option is not given. In case if user saves the modified settings, this file gets overwritten with new settings.

-i config_input_file, --input config_input_file
 Top level configuration input file used for menu interface. The file "nconf.in" is assumed if this option is not given.

-f fragment_config_file, --fragment fragment_config_file
 File containing partial configuration settings that need to be merged into main configuration file provided with option "-c".

-o output_file, --output output_file
 File to which generated output needs to be written. File extension of output_file is recognized and appropriate code is generated. Recognized file extensions are:

  **h**		C source header file

  **xml**	XML file

  **pl**	Perl source file

  **py**	Python source file

  **go**	Golang source file

  **php**	PHP source file

  **rb**	Ruby source file

  **js**	JavaScript source file

-h, --help
  Display this command usage.

EXAMPLES
========

Load configuration settings from .nconf file if present and display ncurses-based
menu based on default configuration input file "nconf.in" and write the
changes back to .nconf file::

	nconf menu

Display ncurses based newer menu, read and write configuration changes to simple.nconf::

	nconf menu-n -c simple.nconf

Display Gtk based menu using configuration input file "simple.in", read and write configuration changes to ".nconf"::

	nconf menu-g -i simple.in

Display Qt based menu using input file "simple.in", read and write configuration changes to simple.nconf::

	nconf menu-q -c simple.nconf -i simple.in

Generate C header file based on configuration settings read from ".nconf"::

	nconf gen -o simple.h

Generate XML file based on configuration settings read from simple.nconf::

	nconf gen -c simple.nconf -o simple.xml

Generate Perl source file based on configuration settings read from ".nconf"::

	nconf gen -o simple.pl

Generate Python source file based on configuration settings read from ".nconf"::

	nconf gen -o simple.py

Generate Golang source file based on configuration settings read from ".nconf"::

	nconf gen -o simple.go

Generate PHP source file based on configuration settings read from simple.nconf::

	nconf gen -c simple.nconf -o simple.php

Generate Ruby source file based on configuration settings read from ".nconf"::

	nconf gen -o simple.rb

Generate JavaScript source file based on configuration settings read from ".nconf"::

	nconf gen -o simple.js

Merge configuration fragments present in other-feature.conf into ".nconf"::

	nconf merge -f other-feature.conf

Merge configuration fragments present in other-feature.conf into "simple.nconf"::

	nconf merge -c simple.conf -f other-feature.conf

HOMEPAGE
========
More information about nconf project can be found at <http://www.ncrux.com/project/nconf/>

AUTHORS
=======
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


