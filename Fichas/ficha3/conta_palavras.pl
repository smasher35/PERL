#!/usr/bin/perl -w
use strict; 

system("clear");


#‎Filename: conta_palavras.pl 
#Hostname: asus 
#Author:  smasher - Paulo Penicheiro
#Created: Tuesday 2012-03-06 14h:58 
#=============================================================
#script: ./template2perl.pl#Config 
#=============================================================


my (@palavras,@leitura,@keys);
my ($linha,$numpalavras);
my %palavras;
my $palavras;
my $key;

if(@ARGV != 1) { die ("\nErro de argumento tem de dar um ficheiro .txt de entrada para ser convertido em código HTML\n\n");}

open (READ, "<@ARGV") || die "erro ao abrir o ficheiro!!!\n\n";

@leitura = <READ>;

close READ;

$numpalavras = 0;

foreach $linha(@leitura)
{
	@palavras = split (/ /,$linha);
}

print "\n\n---> Conteúdo do ficheiro de entrada @ARGV <---\n\n";
print "@palavras\n\n";

foreach $linha(@palavras)
{
	$numpalavras = $numpalavras + 1;
	chomp (@palavras);

	if (exists $palavras{$linha})
	{		
		
		$palavras{$linha} = $palavras{$linha}+1;	
	}
	else
	{		
		$palavras{$linha} = 1;
	}
}

@keys = sort {$palavras{$b} <=> $palavras{$a}} keys %palavras;

foreach $key(@keys)
{
	print "$key --> $palavras{$key}\n";
}

print "\n\n";
print "\n\n--> Existem $numpalavras palavras no ficheiro de entrada @ARGV \n\n";

