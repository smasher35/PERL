#!/usr/bin/perl -w
use strict;

my $number;
my $factor;



print "********** O script vai calcular todos os factores primos de um numero dado!! ********** \n\n\n";


print "Introduza um número inteiro: ---> ";

chomp ($number = <STDIN>);

$factor = `factor $number |tr -s ' ' '-'| cut -f2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30 -d-`;

print "\n $factor";

printf ("# Os factores primos de --> ".$number." são: --> ".$factor." \n");




 
