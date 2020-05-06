#!/usr/bin/perl -w
use strict;

system("clear");

my (@dicionario,@traduzidas,@temp);
my $linha;
my $j;
my %dic;
my $dic;
my $traduzida;

#VALIDAÇÃO DO ARGUMENTO, SÓ PODE ACEITAR 2, SE FOR DIFERENTE DE 2:
if(@ARGV != 2) { die ("\nErro de argumento tem de dar dois ficheiros .txt de entrada, sendo o primeiro o diccionário que contém a lista de palavras e o segundo o ficheiro que vai receber as traduções!\n\n");}

open(DIC,"$ARGV[0]") || die ("$! \n");
	
@dicionario = <DIC>;
@dicionario = sort @dicionario;

close DIC;

chomp (@dicionario);
foreach $linha(@dicionario)
{
	@temp = split(/-/,$linha);
	$dic{$temp[0]}= $temp[1];
}

open(LISTA,"$ARGV[1]") || die ("$! \n");
	
@traduzidas = <LISTA>;
@traduzidas = sort @traduzidas;

close LISTA;

print "\n---> DICCIONÁRIO <---\n\n";

foreach $dic (sort keys %dic)
{
	print("$dic – $dic{$dic}\n");
}

chomp (@traduzidas);

print "\n\n---> PALAVRAS A TRADUZIR <---\n\n";
foreach $linha(@traduzidas)
{
	print "$linha\n";
}

print "\n\n---> PALAVRAS TRADUZIDAS <---\n\n";
foreach $linha(@traduzidas)
{

	if (exists $dic{$linha})
	{
		$traduzida = $dic{$linha};
		print "$traduzida\n"
	}
	else
	{
		print "A palavra $linha não existe no diccionario\n";
	}
}
