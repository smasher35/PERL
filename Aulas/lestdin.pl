#!/usr/bin/perl -w
use strict ;

# Programa “lestdin.pl”
my $j=0;
my $linha="";
$j = 1;
while ($linha = <STDIN>)
{
print("linha $j - $linha\n");
$j++;

# chomp ($linha);
#if ($Linha eq "exit"){
#	last;
#	}
}

