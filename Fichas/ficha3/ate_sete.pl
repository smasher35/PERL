#!/usr/bin/perl -w
use strict;

system ("clear");
srand(time);

my $contador;
my $sete;


$contador = 0;
do
{
	$sete = 0;
	$sete = int(rand(11));
	$contador = $contador +1;

}while ($sete != 7);


if ($contador == 1)
{
	print "\n\nO script levou $contador tentativa para encontrar o número 7!!!!!\n\n";
}
else
{
	print "\n\nO script levou $contador tentativas para encontrar o número 7!!!!!\n\n";
}
