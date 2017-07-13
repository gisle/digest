package Digest::Dummy;

use strict;
use parent qw(Digest::base);

our $VERSION = 1;

sub new {
    my $class = shift;
    my $d = shift || "ooo";
    bless { d => $d }, $class;
}

sub add {}
sub digest { shift->{d} }

1;

