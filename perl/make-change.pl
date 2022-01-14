#!/usr/bin/env perl

use strict;

my $bill    = int($ARGV[0]);
my $offered = int($ARGV[1]);

die "need 2 arguments: bill amount and money offered by customer\n" unless $offered;

my @money = (1000, 500, 100, 50, 20, 10, 5, 2, 1);

my $target = $offered - $bill;
my @change = ();

for my $value ( @money ){
    while ( $target >= $value ){
        push @change, $value;
        $target -= $value
    }
}

print "The bill is $bill\n";
print "The customer offered $offered\n";
print 'Change given is ', join(' ', @change), "\n";

