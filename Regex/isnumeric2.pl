#!/usr/bin/perl -w
use strict;



my $number;


print "Introduza um número inteiro ---> ";

chomp ($number = <STDIN>);


if ($number =~ m/^-[0-9]$ || ^[0-9]$/)
{
	print "\nNÚMERO INTEIRO\n\n";
}
else
{
	print "\n\nNÚMERO NÃO INTEIRO\n\n";
}