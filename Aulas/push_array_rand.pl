#!/usr/bin/perl -w
use strict;

srand (time);

my (@array, @outarray,@sortedarray); # define as vareáveis de arrays;
my ($i,$rand,$k, $printarray); # define as vareáves escalares;
my $chaves;

system ("clear"); # limpa o ecrã;

print " =============================================================================================================== \n\n ";
print " O Script vai gerar um cojunto de apostas para o totoloto, consoante o número introduzido pelo utilizador \n\n";
print " =============================================================================================================== \n\n ";
print " Introduza o número de apostas pretendido!  \n";
chomp ($chaves = <STDIN>);

print "\n\n";


for ($k = 1 ; $k <= $chaves ; $k ++) # cria 3 conjuntos de chaves de apostas
{
		for ($i = 1 ; $i <= 6; $i ++) # cria pos 6 números de cada aposta;
		{
				$rand = int(rand(50)+1); # Gera uma sequência aleatória de números entre 1 e 49;
				push( @array, $rand); # Insere o valor da vareável $rand no array;
		}
	@sortedarray = sort {$a <=> $b} @array; # uma vez que o array é numério tem de se usar a função { $a <=> $b } para ordenar o array;
	@outarray = join(" ", @sortedarray); # adiciona um espaço em branco entre os elementos do array;
	print "chave $k - "; # imprime a palavra chave mais o número da chave antes de cada linha do array;
	print @outarray; #imprime a linha do array;
	delete @array [0..5]; #apaga todos os elementos do array, visto já sabermos o total de elementos do array;
	print "\n\n";
}





