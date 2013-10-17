#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: makeTests.pl
#
#        USAGE: ./makeTests.pl  
#
#  DESCRIPTION: Creates a lot of test runs 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: wba (wolf), wbiker@gmx.at
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 10/10/13 19:32:52
#     REVISION: ---
#===============================================================================

use Modern::Perl;

use Data::Dumper;
use autodie;
use Digest::MD5 qw(md5_hex);
use Time::HiRes qw(time);

my $tr_file = 'testruns.dat';
my $ts_file = 'testsuites.dat';
my $tc_file = 'testcases.dat';
my $tp_file = 'testcaseparams.dat';

my @subject = qw(BitLocker DE FE VMware Volume USB Disc FFH VISTA W7 W8 Linux Mac);
my @pred = qw(encrypt decrypt format boot shutdown kill move copy move goes died);

my $tr = {};

for my $count (0..1000) {
    my $id = get_id();
    $tr->{$id} = { name => get_name(), id => $id, ts => []  }; 
}
# new comment to commit
open(my $fh, ">", $tr_file);
$Data::Dumper::Purity = 1;
$Data::Dumper::Useqq = 1;
my $d = Data::Dumper->new([$tr], ['tr']);
print $fh $d->Dump();

close($fh);

sub get_name {
    return "$subject[rand(@subject)] $pred[rand(@pred)] $subject[rand(@subject)]";
}

sub get_id {
  return md5_hex(time()); 
}
