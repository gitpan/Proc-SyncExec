# $Id: Makefile.PL,v 1.1 1997-08-13 12:41:31-04 roderick Exp $
#
# Copyright (c) 1997 Roderick Schertler.  All rights reserved.  This
# program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME		=> 'Proc::SyncExec',
    VERSION_FROM	=> 'SyncExec.pm',
    dist		=> {
    	COMPRESS 	=> 'gzip --best',
    	DIST_CP		=> 'ln',
    	PREOP		=> '$(MAKE) ci',
    	SUFFIX		=> 'gz',
    },
    test		=> { TESTS => '*.t' },
);
