#!/usr/bin/perl -w
use strict;

srand(time);

my $tentativa=0;
my $contador=0;

do
{
	
	$contador = $contador + 1;	
	$tentativa = int(rand(10));	
	print $contador." -> " .$tentativa."\n";
	
}while ($tentativa != 7);

print "\n";

print "o numero de tentativas foram -> ".$contador;

print "\n";
