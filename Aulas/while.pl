#!/usr/bin/perl -w
use strict;


my $pal = ""; #delcara a variável pal


while(uc($pal) ne "FIM") #uc --> converte a string para letras maiúsculas - ne --> equivale ao diferente para a comparação de strings
{
	if($pal) {print ("A palavra escrita foi: $pal \n");} # Analisa a variavel pal, se for zero imprime a palavra contida na variável, caso contrario vai pedir a inserção de uma palavra
	print "Escreva uma palavra: "; 	
	chomp($pal=<STDIN>); #elimina o enter do teclado e pede a palavra
}

