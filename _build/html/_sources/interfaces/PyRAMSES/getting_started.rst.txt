.. _start:

***************
Getting started
***************

.. _start_installing-PyRAMSES:

Installing PyRAMSES
===================

You may already have PyRAMSES installed -- you can check by doing::

  python -c 'import PyRAMSES'

If that fails grab the latest version of PyRAMSES module and install it with::

  python setup.py install
  

.. _start_update_dll:

Updating RAMSES dynamic library
===============================

PyRAMSES is a wrapper around the dynamic library of RAMSES. The .dll and .so
files are located inside the libs/ directory of the module. When a new version
of RAMSES is available, the libraries can be updated
by simply replacing the files along with the header file (ramses.h).

The header file is important as PyRAMSES automatically parses this file, compares
against the dynamic library routines and creates the necessary interface. An example
header file is shown below:

.. literalinclude:: ../../../libs/ramses.h
   :language: c
