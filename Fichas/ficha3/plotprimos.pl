#!/usr/bin/perl -w 
use strict; 

system("clear");
#‎Filename: plotprimos.pl 
#Hostname: asus 
#Author:  smasher 
#Created: Sunday 2012-03-04 18h:28 
#=============================================================
#script: ./template2perl.pl 
#=============================================================

my ($num1,$num2,$min,$max);
my $i;
my $factor;
my @primos;
my $totprimos;


#VALIDAÇÃO DO ARGUMENTO, SÓ PODE ACEITAR 1, SE FOR DIFERENTE DE 1:
if(@ARGV != 2) { die ("\nErro de argumento, é necessário dar dois números como argumentos!\n\n");}


$num1 = $ARGV[0];
$num2 = $ARGV[1];

if ($num1 > $num2)
{
	$max = $num1;
	$min = $num2;
}
else
{
	$max = $num2;
	$min = $num1;
}

print "\n\nO número máximo dos argumentos é o $max e o número mínimo é o  $min!!!!\n\n";

for ($i = $min; $i <= $max; $i++)
{

	$factor = `factor $i |tr -s ' ' '-'| cut -f2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30 -d-`;
	@primos = (split /-/,$factor);
	$totprimos = @primos;
	printf ("# O total de primos de --> ".$i." são: --> ".$totprimos." \n");
}





