#!/usr/bin/perl

use strict;
use warnings;

# define a hash
my %v = (v1 => 75, v2 => 251, v3 => 3, v4 => 12);

# sort by value and put the keys in an array 
my @keys = sort {$v{$b} <=> $v{$a}} keys %v;

# loop through array to print the hash pairs ordered
foreach my $key (@keys)
{
  print "$key: $v{$key}\n";
}
