#!/usr/bin/perl -w
use strict;

my $num;
my @nums;
my $soma;

printf ("# O SCRIP VAI CALCULAR A SOMA RECURSIVA DE VÁRIOS ELEMENTOS DE UM ARRAY # \n");
print "==========================================================================\n\n";


print "\n INTRODUZA NÚMEROS INTEIROS PARA DENTRO DE UM ARRAY, PARA TERMINAR BASTA INTRODUZIR O 0 'ZERO' \n";


do
{
	print " Introduza um número inteiro --> ";
	chomp ($num = <STDIN>);
	push (@nums,$num);
	print "\n\n";
}while ($num !=0);


printf ("\n\n A soma dos elementos do vector é ---> ".&soma(\@nums)."\n\n");


sub soma($)
{
	my $nums = $_[0];
	my $num_elements = 0;
	my ($nums, $soma);
	
	
	$num_elements = @$nums;
	$soma = 0;
	
	if (@$nums)
	{	
		
		$soma = $soma + shift (@$nums);		
		return &soma ($soma);
	}
	else
	{
		return 0;
	}
}

