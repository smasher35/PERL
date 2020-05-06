#!/usr/bin/perl -w
use strict;

srand (time);

my (@array,@arraystars, @outarray,@outstars,@sortedarray,@sortedstars, @compara, @compara2); # define as vareáveis de arrays;
my ($i,$rand,$randchaves,$k, $printarray,$w); # define as vareáves escalares;
my ($chaves, $element,$resposta);


START:
system ("clear"); # limpa o ecrã;


print " =============================================================================================================== \n\n ";
print " O Script vai gerar um cojunto de apostas para o totoloto, consoante o número introduzido pelo utilizador \n\n";
print " =============================================================================================================== \n\n ";


print " Introduza o número de apostas pretendido! --> ";
chomp ($chaves = <STDIN>);

print "\n\n";


for ($k = 1 ; $k <= $chaves ; $k ++) # cria os conjuntos de chaves de apostas que o utilizador introduzir
{
		for ($i = 1 ; $i <= 6; $i ++) # cria pos 6 números de cada aposta;
		{				
				$rand = int(rand(50)+1); # Gera uma sequência aleatória de números entre 1 e 49;
				@compara = @array;
				
				if (grep { $_ eq $rand} @compara) # Vai procurar se o valor actual da variável rand já existe no array;
				{
					$i = $i -1; # se o valor já existir, reduz o valor de i para voltar a inserir um novo valor e a chave não ficar com valores a menos;
				}
				else
				{
					push( @array, $rand); # Insere o valor da vareável $rand no array;
				}
			
		}
		for ($w=1 ;$w <= 2; $w++)
		{
			$randchaves = int(rand(12)+1);
			@compara2 = @arraystars;
		
			if (grep { $_ eq $randchaves} @compara2) # Vai procurar se o valor actual da variável rand já existe no array;
				{
					$w = $w -1; # se o valor já existir, reduz o valor de i para voltar a inserir um novo valor e a chave não ficar com valores a menos;
				}
				else
				{
					push( @arraystars, $randchaves); # Insere o valor da vareável $rand no array;
				}	
		}

	@sortedstars = sort {$a <=> $b} @arraystars; # uma vez que o array é numérico tem de se usar a função { $a <=> $b } para o ordenar;
	@sortedarray = sort {$a <=> $b} @array; # uma vez que o array é numérico tem de se usar a função { $a <=> $b } para o ordenar;
	@outarray = join(" ", @sortedarray); # adiciona um espaço em branco entre os elementos do array;
	@outstars = join(" ", @sortedstars); # adiciona um espaço em branco entre os elementos do array;
	printf ( "chave $k --> ".@outarray." + Estrelas ---> ".@outstars); # imprime a palavra chave mais o número da chave antes de cada linha do array;
	delete @array [0..5]; #apaga todos os elementos do array, visto já sabermos o total de elementos do array;
	delete @arraystars [0..1]; #apaga todos os elementos do array, visto já sabermos o total de elementos do array;
	print "\n";
}

print "Deseja apostar de novo? (S OU N) \n\n";

chomp ($resposta = <STDIN>);

#print "ANTES-->".$resposta."<--\n\n";
$resposta = uc($resposta);
#print "DEPOIS-->".$resposta."<--\n\n";

if ($resposta eq "N" )
{
	exit;
}
else
{
	goto START;
}





