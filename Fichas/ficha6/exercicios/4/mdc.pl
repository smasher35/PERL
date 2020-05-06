#!/usr/bin/perl -w
use strict;

sub main
{
	my ($num1,$num2);
	printf ("\n--> O SRIPT VAI CALCULAR MÁXIMO DIVISOR COMUM ENTRE DOIS NÚMEROS\n");
	printf ("==================================================================\n\n");
	printf ("\n--> Introduza o primeiro número ---> ");
	chomp ($num1 = <STDIN>); # Recebe o valor introduzido e elimina a nova linha no fim da variável
	print "\n\n";
	printf ("\n--> Introduza o segundo número --> ");
	chomp ($num2 = <STDIN>); # Recebe o valor introduzido e elimina a nova linha no fim da variável
	print "\n\n";
	printf ("=====================================================\n\n");	
	printf(" O Máximo Divisor Comum entre ".$num1." e ".$num2." é o --> ".mdc($num1,$num2)."\n\n"); # imprime o resultado final 
	printf ("=====================================================\n\n");
	exit 0;
}

sub mdc ($$) #função de cálculo do máximo divisor comum
{
	my $u = $_[0];
	my $v = $_[1]; 
	
	if ($v)
	{
		return mdc($v,$u%$v); 
	}
	else
	{
		return abs ($u); 
	}
}

&main; #CHAMA A FUNÇÃO MAIN
