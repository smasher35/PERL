#!/usr/bin/perl -w
use strict;


my $j;
my $linha="";
my $linhaconta=0;
my ($numero, $processados, $produto);
my @linhainfo;


$produto = 1;
$processados = 0;

while ($linha = <>)  # ciclo para contar as linhas do ficheiro introduzido
{
	chomp($linha);
	@linhainfo = split (':',$linha); #separa cada numero da linha para dentro de um array
	
	foreach $numero(@linhainfo)	# vai percorrer todos os elementos do array
	{
		#print $numero;	
		$processados = $processados +1 ;
		$produto = $produto * $numero;
		if ($numero == 0)
		{		
			die ("[AVISO] 0 DETECTADO \n");
		}	
	}
	
	$linhaconta = $linhaconta +1;
	
	
}

# $linhainfo = @linhasplit;

printf("Linhas Processadas:  --->  ".$linhaconta."\n");
printf("Numeros Processados:  --->  ".$processados."\n");
printf("O produto dos elementos do Array ---> ".$produto."\n");
print "\n\n\n";

