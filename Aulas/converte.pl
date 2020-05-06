#!/usr/bin/perl -w
use strict;


printf ("Introduza o valor em graus Farenheit! \n"); #pede ao utilizador o valor em graus Farenheit

my $graus = <STDIN>; #recebe o valor do teclado

chomp($graus); #elimina o ENTER do teclado

my $conversao = (5*($graus-32)/9); # variavel que vai realizar a conversão dos graus



printf ("A temperatura em Celsius é: %.2f \n", $conversao); #Output final do programa


 
