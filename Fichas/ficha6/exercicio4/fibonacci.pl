#!/usr/bin/perl -w
use strict;

my $n;

sub main
{

	
	printf "\nQuantos números da sequência Fibonnaci quer?\\n\n\n";

	
	chomp ($n = <STDIN>); # Recebe o valor introduzifo e elimina a nova linha no fim da variável

	&fibonacci($n); #chama a função fibonnaci

	exit 0;
}

sub fibonacci($)
{
  
	my ($i,$a,$b,$sum);
	
	$a = 0;
	$b = 1;
	$n = $_[0];

	for ($i=0;$i<$n;$i++)
	{
    	printf "%d\n", $a;
    	$sum = $a + $b;
    	$a = $b;
    	$b = $sum;
  	}
}

#&main;
