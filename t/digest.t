#!/usr/bin/env perl

use strict;
use Test::More tests => 3;

use Digest;

{
    package Digest::Dummy;
    use vars qw($VERSION @ISA);
    $VERSION = 1;

    require Digest::base;
    @ISA = qw(Digest::base);

    sub new {
	my $class = shift;
	my $d = shift || "ooo";
	bless { d => $d }, $class;
    }
    sub add {}
    sub digest { shift->{d} }
}

my $d;
$d = Digest->new("Dummy");
is $d->digest, "ooo";

$d = Digest->Dummy;
is $d->digest, "ooo";

$Digest::MMAP{"Dummy-24"} = [["NotThere"], "NotThereEither", ["Digest::Dummy", 24]];
$d = Digest->new("Dummy-24");
is $d->digest, "24";
