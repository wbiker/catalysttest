#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: loadTestRun.pl
#
#        USAGE: ./loadTestRun.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: wba (wolf), wbiker@gmx.at
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 10/10/13 20:40:08
#     REVISION: ---
#===============================================================================

use Modern::Perl;

use Data::Dumper;
use autodie;

my $tr_file = q(testruns.dat);

my $ref = do $tr_file;
print Dumper $ref;
#its that easy
