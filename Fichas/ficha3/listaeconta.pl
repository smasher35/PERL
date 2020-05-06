#!/usr/bin/perl -w
use strict;

my @palavras;
my $palavra;
my %contapalavras;
my $contapalavras;


#VALIDAÇÃO DO ARGUMENTO, SÓ PODE ACEITAR 1, SE FOR DIFERENTE DE 1:
if(@ARGV != 1) { die ("\nErro de argumento tem de dar um ficheiro .txt de entrada!\n\n");}

my $linha="";

while ($linha=<>)
{
	push (@palavras, $linha)

}

chomp (@palavras);
foreach $palavra(@palavras)
{
	if (exists $contapalavras{$palavra})
	{		
		
		$contapalavras{$palavra} = $contapalavras{$palavra}+1;	
	}
	else
	{		
		$contapalavras{$palavra} = 1;
	}
}


foreach $palavra (sort keys %contapalavras)
{
	print("$palavra – $contapalavras{$palavra}\n");
}

