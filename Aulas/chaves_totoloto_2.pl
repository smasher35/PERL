#!/usr/bin/perl -w
use strict;

srand (time);

my (@array, @outarray,@sortedarray, @compara); # define as vareáveis de arrays;
my ($i,$rand,$k, $printarray); # define as vareáves escalares;
my ($chaves, $element,$resposta);


START:
system ("clear"); # limpa o ecrã;


print " =============================================================================================================== \n\n ";
print " O Script vai gerar um cojunto de apostas para o totoloto, consoante o número introduzido pelo utilizador \n\n";
print " =============================================================================================================== \n\n ";


print " Introduza o número de apostas pretendido!  \n";
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
	@sortedarray = sort {$a <=> $b} @array; # uma vez que o array é numérico tem de se usar a função { $a <=> $b } para o ordenar;
	@outarray = join(" ", @sortedarray); # adiciona um espaço em branco entre os elementos do array;
	print "chave $k - "; # imprime a palavra chave mais o número da chave antes de cada linha do array;
	print @outarray; #imprime a linha do array;
	delete @array [0..5]; #apaga todos os elementos do array, visto já sabermos o total de elementos do array;
	print "\n\n";
}

print "Deseja apostar de novo? (S OU N) \n\n";

chomp ($resposta = <STDIN>);

#print "ANTES-->".$resposta."<--\n\n";
$reposta = uc($resposta);
#print "DEPOIS-->".$resposta."<--\n\n";

if ($resposta eq "N" )
{
	exit;
}
else
{
	goto START;
}





