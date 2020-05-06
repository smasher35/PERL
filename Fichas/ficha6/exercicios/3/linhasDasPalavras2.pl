#!/usr/bin/perl -w 
use strict; 

#‎Filename: linhasDasPalavras.pl 
#Hostname: asus 
#Author:  smasher 
#Created: Saturday 2012-01-28 19h33m 
#===============================================================================
# VAI SER DADO UM FICHEIRO DE TEXTO DE ENTRADA, O SCRIPT VAI SEPARAR AS PALAVRAS 
# E APRESENTAR A PALAVRA SEGUIDA DAS LINHAS EM QUE ELA OCORRE
#===============================================================================
#Inserir a configuração aqui
my (@linha_palavra,@palavras,@ficheiro);
my $palavra;
my ($linha,$linha2, $j,$posicao);
my %posicao;
my @linhas;


if (@ARGV <1) {     							#valida se nao enviou argumentos
	die("erro parametros \n");			#terminar programa
}

&FileToListagem();

sub FileToListagem()
{
	my $j;

	$j=1;
	while ($linha =<>) #percorre linha a linha doi ficheiro introduzido
	{
		push(@linhas,$j);		
		@ficheiro = split(/ /,$linha);	#separa cada palavra da linha para dentro de um array
		foreach $palavra (@ficheiro) # percorre todos os elementos do array
		{	
			$posicao {$palavra} = $linhas[$j]; # se já existir adiciona uma unidade ao valor existente
 	  		
		}
		$j++
	}
	print "Array Linhas @linhas\n";
	&ListagemToStdout()
}


sub ListagemToStdout()
{
	foreach $palavra (sort keys %posicao)
	{
		printf ($palavra. " ---> ".$posicao{$palavra}."\n"); #imprime todas as palavras e a sua ocorrência
	}

}



