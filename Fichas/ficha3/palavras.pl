#!/usr/bin/perl -w
use strict;

my @palavras;
my $palavra;
my $i;


$i = 1;
print "Introduza 5 palavras\n\n";

do
{
	print "introduza a $iª Palavra ---> ";
	$i = $i+1;
	chomp($palavra = <STDIN>);
	push (@palavras, $palavra);
}while ($i < 6);


@palavras = sort (@palavras);

print "\n\n AS Palavras introduzidas foram e ordenadas num array !!!!\n\n";

foreach $palavra(@palavras)
{
	print "$palavra\n";
}
