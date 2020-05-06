#!/usr/bin/perl -w
use strict;

my ($string,$words,$tot_argumentos,$num_argumentos);
my @words;


if (@ARGV <1) {     							#nao enviou argumentos
	die("erro parametros \n");			#terminar programa
}

$tot_argumentos = @ARGV;
$num_argumentos = 0; 

@words = @ARGV;

if ($tot_argumentos == 1)
{
	print "Enviou $tot_argumentos argumento \n\n\n";  #validar se enviou apenas 1 argumento
}
else
{
	print "Enviou $tot_argumentos argumentos \n\n\n";  #validar se enviou apenas 1 argumento
}


foreach $words(@words)
{
	$string = $string."$words\n";
}

print $string   
