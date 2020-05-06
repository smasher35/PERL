#!/usr/bin/perl -w
use strict;


srand (time);

my (@numeros, @sortnumeros);
my ($i, $numeros, $ciclonums, $ordenados);


printf("******** O script vai gerar números aleatórios entre 0 e 9! ****************** \n\n");
printf("******** Quantos números aleatórios deseja gerar??***********\n\n\n\n");

printf ("Inroduza o número aqui: --->  ");
chomp ($numeros = <STDIN>);

$i=1;

for ($i = 1 ; $i <= $numeros ; $i ++)
{
	$ciclonums = int (rand (10));
	push (@numeros, $ciclonums);
}

@sortnumeros = sort {$b <=> $a} @numeros;


print "\n\n\n\n";
printf ("Estes são os números gerados aleatóriamente e ordenados por ordem decrescente!   ----> ");
printf ($ordenados = join ("#", @sortnumeros));
print "\n\n\n";







