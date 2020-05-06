#!/usr/bin/perl -w 
use strict; 

#‎Filename: refENV.pl 
#Hostname: asus 
#Author:  smasher 
#Created: Saturday 2012-01-28 17h42m 
#====================================================================================================================================
#O  SCRIP VAI ENVIAR A REFERÊNCIA DFE UMA HASH PARA UMA FUNÇÃO E RECEBER UMA STRING COM AS VARIÁVEIS DE AMBIENTE E OS VALORES DA HASH
#====================================================================================================================================


# Variáveis de Ambiente
my ($a,$b,$c,$d);
my %ENV;


%ENV = ('$a',1,'$b',2,'$c',3,'$d',4); #Hash com as chaves e respectivos valores


printf ("\n##### Valores devolvidos pela STRING da função ENVtoStr ##### \n".&ENVtoStr(\%ENV)); #chama a função enviando apenas a referência da hash, recebe o retorno da função e imprime o resultado final



sub ENVtoStr($)    # função que vai devolver uma string com as variáveis de ambiente e seus valores mais as variáveis da função
{
	my $ref_hash = $_[0]; # variável que recebe a referência da Hash
	my $codigo;
	my (@valores,@chaves);   # variásveis da funcção
	my $string_final;
	my $var_sub;
	my $string;

	#@valores = values(%$ref_hash); #passa todos os valores da hash para um array
	#@valores = sort @valores;  #ordena o array dos valores															#apenas linhas de teste para confirmar os valores passados para a hash
	#@chaves = keys(%$ref_hash); #passa todas as chaves para um array

	foreach $codigo (keys(%$ref_hash)) #interação da hash
	{
		$string_final =$string_final."$codigo\n$$ref_hash{$codigo}\n"; #atribuição das chaves e respectivo valores da hash à string em linhas separadas
	}	
	$var_sub = "\n---> Variáveis da Função <--- \n".'$codigo'."\n".'@valores'."\n".'@chaves'."\n".'$string_final'."\n".'$var_sub'."\n".'$string'."\n".'$ref_hash'."\n"; #atribuir À variável os nomes de todas as variáveis da função
	$string_final = $string_final.$var_sub; # junta as variáveis do ambiente e respectivos valores com as variáveis da função
	$string = "\n---> Variáveis de Ambiente e seus valores contidos na HASH <--- \n".'HASH --> ENV'."\n".$string_final; #atribui à variável o valor final a enviar
	return ($string); #envia o valor da string
}
	
	


	


	


	
	



