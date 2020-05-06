#!/usr/bin/perl -w
use strict;


my (@array, @outarray);
my ($element, $i);



for ($i = 1 ; $i <= 10 ; $i ++)
{
	push (@array, $i);
}

printf ( @outarray = join("\n",@array));
print "\n\n";

print "Introduza um número a procurar no array? \n";
chomp ($element = <STDIN>);

if (grep {$_ eq $element} @array)
{
	print "Elemento '$element' encontrado! \n";
}
else
{
	print	"Elemento '$element' não encontrado no array! \n";
}
