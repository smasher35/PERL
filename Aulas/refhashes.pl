#!/usr/bin/perl -w
use strict;

# Nota: atenção às diversas formas como se
# podem utilizar as referências passadas às funções
# Função que recebe uma lista associativa (por
# referência) e dois escalares (para adicionar à lista
# associativa)


sub AddToHash($$$)
{
	my $ref_hash = $_[0]; # referência da lista associativa
	my $key = $_[1];
	# obter chave (p/valor)
	my $value = $_[2];
	# obter valor (p/valor)
	$$ref_hash{$key} = $value;
	# adicionar à lista
}

# Função que mostra uma lista associativa (referência)

sub ShowHash($)
{
	my $ref_hash = $_[0];
	#referência da lista associativa
	my $codigo;
	foreach $codigo (keys(%$ref_hash))
	{
		print("$codigo - $$ref_hash{$codigo} \n");
	}
}

# +++++++++++ teste às funções ++++++++++++++++

my %codPostal = ('2400', 'Leiria', '3000', 'Coimbra');
my $cod = '2000';
my $area = 'Porto';

# mostrar a lista inicial

print("Lista inicial:\n");

ShowHash(\%codPostal);

# adicionar novo par à lista
# 1o parâmetro passado por referência
# 2o e 3o parâmetros passados por valor

AddToHash(\%codPostal, $cod, $area);
print("\n");

# mostrar lista final, depois de ser alterada
print("Lista final:\n");

ShowHash(\%codPostal);

