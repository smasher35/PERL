#!/usr/bin/perl -w
use strict;


my $n;

sub main
{
	my ($base,$expoente);
	printf ("\n--> O SRIPT VAI CALCULAR A POTÊNCIA DE UM NÚMERO\n");
	printf ("=================================================\n\n");
	printf ("\n--> Introduza o número para a base ---> ");
	chomp ($base = <STDIN>); # Recebe o valor introduzifo e elimina a nova linha no fim da variável
	print "\n\n";
	printf ("\n--> Introduza o número para o Expoente --> ");
	chomp ($expoente = <STDIN>); # Recebe o valor introduzifo e elimina a nova linha no fim da variável
	print "\n\n";
	printf ("===========================================\n\n");	
	printf(" O número --> ".$base." elevado a --> ".$expoente." = ".potencial($base,$expoente)."\n\n"); # imprime o resultado final 
	printf ("===========================================\n\n");
	exit 0;
}



sub potencial ($$) #função de cálculo da potência de um número
{
	my $b = $_[0]; #variável que recebe o valor da base
	my $e = $_[1]; #variável que recebe o valor do expoente

	if ($b == 0) #ciondição para a base igual a zero
	{
		return 0; #sai da função e devolve 0
	}
	elsif ($e == 0) # condição para o expoente igual a um
	{
		return 1; # sai da função e devolve 1
	}
	elsif ($e => 1) #condição para quando o expoente é maior que  um
	{
		return ($b * potencial($b,$e-1)); # vai chamar a função potencial até o expoente ser igual a um
	}
	else
	{
		
		return 1; # condição de paragem da função
	}

}


&main; #CHAMA A FUNÇÃO MAIN
