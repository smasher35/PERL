#!/usr/bin/perl -w
use strict;


sub fatorial_recursivo($$)
{

	my $num1 = $_[0]; # obter 1º parâmetro de entrada
	my $num2 = $_[1]; # obter 2º parâmetro de entrada
	my ($k1,$k2);
	
	$k1 = $num1;
	$k2 = $num2;	

	if ($k1 > $k2)
	{
    	return 1;
	}
	else
	{
		$k1 = $k1-1;		
		for ($k1..$k2)
		{			
			if($k1 <= 1) #condição de paragem
			{
				return 1;
			}
			else
			{
				$k1++;				
				printf (" ".$k1." x");
				return $k1 * &fatorial_recursivo($k1-1,$k1++); # chamada recursiva
						
			}
				$k1 ++;			
		}

	}
}



##### codigo principal ########


my ($i,$n1, $n2,$fact,$k);

print "\n\n";
printf ("Insira o limite inferior para o cálculo do factorial ---> ");
chomp ($n1 = <STDIN>);

print "\n\n";
printf("Insira o limite superior para o cálculo do factorial ---> ");
chomp ($n2 = <STDIN>);

print "\n\n";																									
$i = $n1;
$fact = 0;

	
$fact = &fatorial_recursivo($n1,$n2);

printf (" --> !".$i." = ".$fact." \n");	
