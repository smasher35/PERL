#!/usr/bin/perl -w
use strict;



print " O prograva vai dizer se um número é positivo ou negativo \n";
print "\n";
print "Introduza o primeiro valor! \n";
print "\n";


my $valor1 = <STDIN>;
chomp ($valor1);



print " o resultado da comparacao e: \n";

if ($valor1 > 0){
	print " O valor introduzido é positivo! \n ";
}elsif ($valor1 == 0){
	print "O valor introduzido é ZERO! \n";
}else{
	print " O Valor introduzido é negativo! \n";
}
print "\n";

