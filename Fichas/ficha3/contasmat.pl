#!/usr/bin/perl -w
use strict;


my $numero;
my ($op1, $op2, $op3, $op4, $op5, $op6);
my ($res1, $res2, $res3, $res4, $res5, $res6);


print "********** O script vai executar uma série de operações matemáticas a um número introduzido pelo utilizador ********** \n\n\n";
print "Introduza um número inteiro: ---> ";
chomp ($numero = <STDIN>);

print "\n\n";

$res1 = ($numero + 3);
printf("# <----- Foram adicionadas 3 unidades ao número ".$numero." \n");
$res2 = ($res1 *2);
printf("# <----- à operação anterior cujo resultado foi ".$res1." , foi multiplicada por 2 \n");
$res3 = ($res2 -4);
printf("# <----- à operação anterior cujo resultado foi ".$res2." , foram subtraídas 4 unidades \n");
$res4 = ($res3 -(2*$numero));
printf("# <----- à operação anterior cujo resultado foi ".$res3." , foram subtraídas 2 vezes o ".$numero." \n");
$res5 = ($res4 + 3);
printf("# <----- à operação anterior cujo resultado foi ".$res4." , foram adicioandas 3 unidades \n");
print "\n\n\n";


printf("# E o resultado final de todas as operações matemáticas foi: ".$res5." \n\n\n");



 





