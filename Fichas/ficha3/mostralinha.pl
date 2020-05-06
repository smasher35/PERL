#!/usr/bin/perl -w
use strict;


# Programa “MostraLinha.pl”
my $j=0;
my $linha="";
$j = 1;
while ($linha=<>)
{
print("linha $j - $linha\n");
$j++;
}

