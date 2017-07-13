package Digest::Dummy;

use strict;
use vars qw($VERSION);
use parent qw(Digest::base);
$VERSION = 1;

sub new {
    my $class = shift;
    my $d = shift || "ooo";
    bless { d => $d }, $class;
}

sub add {}
sub digest { shift->{d} }

1;

