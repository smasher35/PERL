#!/usr/bin/perl -w
use strict;


srand(time);

my $numero;
my $i;
my $calculo;
my $outra;

system("clear");
printf (" O Script vai efectuar a tabuada do numero introduzido!!! \n");

do
{
	printf("Introduza um número para efectuar a tabuada:  \n");

	chomp($numero = <STDIN>);

	for ($i=1; $i<=10; $i++)
  	{
		$calculo = $i*$numero;
		print ("$numero x $i = $calculo \n");

   	}


	print ("deseja fazer outra tabuada?  S ou N \n");
	chomp ($outra = <STDIN>);
	uc $outra;
}until ($outra ne "N");



