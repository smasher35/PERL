#!/usr/bin/perl -w
use strict;

my $word;
my $num_argumentos = 0;    # declaração de variáveis
my $tot_argumentos;
my @words;

if (@ARGV <1) {     							#valida se nao enviou argumentos
	die("erro parametros \n");			#terminar programa
}

print "\n\n ### Listar os Argumentos de Entrada do ARRAY ESPECIAL ARGV E PASSÁ-LOS PARA UMA STRING ### \n\n";

$tot_argumentos = @ARGV; # dá o número total de argumentos do array especial @ARGV

if ($tot_argumentos == 1)  # se entrar só um argumento
{
	print "Enviou $tot_argumentos argumento \n\n\n";  #Só para efeito do output distinguir o plural da palavra argumento, aqui imprime o singular 
}
else # se entrar mais do que um argumento
{
	print "Enviou $tot_argumentos argumentos \n\n\n";  #Só para efeito do output distinguir o plural da palavra argumento, aqui imprime o plural 
}

printf ("Os Argumentos de entrada que foram passados para a string são os seguintes: \n\n".&ARGVtoStr(\@ARGV)."\n\n"); #chama a função enviando a referência do array especial, recebe o valor da string da função e imprime o output da string


sub ARGVtoStr($)   # função que recebe a referencia do array, e depois converte o seu conteúdo para uma string e devolve-a ao código principal
{
	my $ref_array = $_[0]; #recebe a referência do ARRAY
	my $ref_string;
	my $string;
	my $string_final; # declaração de variáveis

	foreach $string(@$ref_array) #iteração do array
	{
		$string_final = $string_final."$string\n"; #passagem de cada elemento do array para a string com o caracter especial de nova linha no final
	}
	
	$ref_string = $string_final; # iguala o valor da string final À variável que vai ser devolvida à função principal
	return ($ref_string); # devolução da string
}
