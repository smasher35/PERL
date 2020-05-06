#!/usr/bin/perl -w
use strict;


sub fatorial_recursivo($$)
{
	my $n = $_[0]; # obter parâmetro de entrada
	
	
	
		
		if($n <= 1)
		#condição de paragem
		{
			return 1;
		}
		else
		{
		# chamada recursiva
			print "$n \n";			
			return $n * &fatorial_recursivo($n-1);
		}
}


##### codigo principal ########


my ($n1,$n3);

print "Introduza um número inteiro para calcular o seu factorial ---> ";
chomp($n1 = <STDIN>);																																
$n3 =0;

print "\n";
$n3 = &fatorial_recursivo($n1);
printf ("\n O Factorial de ".$n1." é ---> ".$n3." \n\n");


