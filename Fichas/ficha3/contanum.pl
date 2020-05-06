#!/usr/bin/perl -w 
use strict;

my $num;
my $count;



print "******************** O script vai contar os digitos do número introduzido pelo utilizador!! ************************ \n\n ";


print " Introduza um número ----> ";
chomp ($num = <STDIN>);

$num = int ($num);

print "\n\n";
print "Este é o Número introduzido ----> ";
print $num;
print "\n\n";
$count = length ($num);
printf(" O numero ".$num." tem ".$count." digitos. \n\n");

print "\n\n";





