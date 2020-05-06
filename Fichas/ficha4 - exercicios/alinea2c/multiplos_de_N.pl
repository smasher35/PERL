#!/usr/bin/perl -w
use strict;

my @numeros;
my $num;
my $linha = "";
my $linhaconta;
my $multiplo;
my $divisao;


`seq 50 > multiplos.txt`;

STARTNUM:
print "Introduza um numero inteiro maior que 1: --->  ";
chomp ($num = <STDIN>);

if ($num <= 1)
{
	print "O numero introduzido terá de ser maior que 1!!! \n";
	goto STARTNUM;
}
else
{
	open (BUFFER, "multiplos.txt") || die ("Ocorreu um erro a abrir o ficheiro! \n");	
	$linhaconta = 0;
	while ($linha = <BUFFER>)  # ciclo para contar as linhas do ficheiro introduzido
	{
			if ($linha >= $num)
			{	
				$linhaconta = $linhaconta +1;
				$multiplo = $linha % $num;
				chomp ($linha);
							
					if ($multiplo == 0 )	
					{
						$divisao = $linha / $num;	
						printf ("OS MÚLTIPLOS SÃO: --->  ".$linha." >> ".$num."x".$divisao."\n");
					}
			}
	}
}

close (BUFFER);
