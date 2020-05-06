#!/usr/bin/perl -w
use strict;


my $j=0;
my $linha = "";
my ($palavra, $lista);
my %contagem;
my @palavras;

print "Escolha um ficheiro de texto  dos disponíveis no directório para contar as palavras nele existentes \n";


while ($linha =<>) #percorre linha a linha doi ficheiro introduzido
{
	@palavras = split(' ',$linha);	#separa cada palavra da linha para dentro de um array
	foreach $palavra (@palavras) # percorre todos os elementos do array
	{	
	  if (exists ($contagem {$palavra})) # verifica se existe a palavra no hash %contagem
		{
			$contagem {$palavra} = $contagem {$palavra} +1; # se já existir adiciona uma unidade ao valor existente
 	  		
		}else{ 
				$contagem {$palavra} = 1; # se não existir atribui o valor 1

		}
		#printf ($palavra. " ---> ". $contagem{$palavra} . "\n"); #imprime todas as palavras e a sua ocorrência
		#print "\n";
	}
}

foreach $palavra (sort keys %contagem)
{
	printf ($palavra. " ---> ". $contagem{$palavra} . "\n"); #imprime todas as palavras e a sua ocorrência
}


