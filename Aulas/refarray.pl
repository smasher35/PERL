#!/usr/bin/perl -w 
use strict;


# Função que recebe uma referência para um vetor e
# o número de elementos a “modificar” (coloca a
# primeira letra a maiúscula)
# nota: utilização de referências auxiliares



sub myUcFirst($$)
{
	my $ref_array = $_[0]; # referência para o vetor
	my $num_elems = $_[1]; # obter número de elementos
	my $i;
	# verificar se o número de elementos a modificar
	# é superior ao número de elementos do vetor
	if ($num_elems > @$ref_array)
	{
		$num_elems = @$ref_array;
	}
# modificar os $num_elem primeiros elementos do vetor
# exemplo com a utilização de ($$) e (->),
# que são formas equivalentes
	for ($i = 0; $i < $num_elems; $i++)
	{
		$$ref_array[$i] = ucfirst($$ref_array[$i]);
	}
}

# +++++++++++ teste à função ++++++++++++++++
my $quant = 3;
my @numeros = ("um","dois","tres","quatro","cinco");
print("Initial Array: @numeros \n");
myUcFirst(\@numeros, $quant);# \@ representa referência
print("Final Array: @numeros \n");

