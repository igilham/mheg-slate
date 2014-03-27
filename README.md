mheg-slate
==========

A simple interactive television slate application in MHEG Plus. A dumb
slate amounts to the *Hello World* application in MHEG Plus/MHEG-5.

Build Instructions
------------------

You will need the MHEG Plus Compiler from
http://sourceforge.net/projects/mhegplus/ to build the project.

Ensure the path to the compiler is correct in the Makefile, then run
the following command to compile the source to MHEG-5 or its
ASN.1 DER representation:

  make [mheg|asn|all]

Testing Instructions
--------------------

You will need the MHEG Plus Player in order to test the code. The player is
an MHEG-5 emulator suitable for testing small interactive television
applications. It can be found in the same SourceForge project as the compiler.

Ensure the path the the player is correct in the Makefile, then run
the following command to launch the player:

  make play

When the player launches, select *Populate carousel from disk* to load the
application.