#!/usr/bin/perl -w
use strict;
# Exemplo de uma função que devolve se um valor é par ou ímpar

my $n;
my $resultado;

sub parimpar
{
	if ($_[0]%2==0)
	{
		return "PAR";
	}else {
		return "IMPAR";
	}
}


sub main()
{
	printf ("****************************** PAR OU IMPAR ******************************** \n\n"); 
	printf ("Insira um número - > ");
   my $numero = <STDIN>;	
	chomp ($numero);
	print ("\nO número $numero é ".parimpar($numero)."\n\n");
}


&main();


