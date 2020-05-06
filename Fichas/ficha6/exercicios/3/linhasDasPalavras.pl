#!/usr/bin/perl -w 
use strict; 

#‎Filename: linhasDasPalavras.pl 
#Hostname: asus 
#Author:  smasher 
#Created: Saturday 2012-01-28 19h33m 
#=============================================================
#Config 
#=============================================================
#Inserir a configuração aqui
my (@linha_palavra,@palavras,@ficheiro);
my $palavra;
my ($linha,$linha2, $j);


open (FICHEIRO, "".$ARGV[0])|| die ("Ocorreu um erro a abrir o ficheiro: $! \n");

@ficheiro = <FICHEIRO>;
chomp (@ficheiro);


$j=1;


print "\n\n";
foreach $linha (@ficheiro)
{
	print "linha $j - $linha\n";
	$j++;
	push (@palavras,split(/ /,$linha));
}


print"\n\n Cada palavra e sua linha do ficheiro carregado\n\n";

$j =1;

foreach $linha (@palavras)
{
	push (@linha_palavra,join ("$j:",$linha));	
	$j++;
}

foreach $linha2 (@linha_palavra)
{
	print("$linha2\n");
}


close(FICHEIRO);
