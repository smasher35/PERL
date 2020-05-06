#!/usr/bin/perl -w
use strict;


my $num;


print "#Introduza um número inteiro positivo --> ";
chomp ($num = <STDIN>);


if ($num =~ m/[^a-zA-Z|?-\d+]/)
{
	print "YES ---> NUMBER INTEGER \n\n";
}
else
{
	print "NO ---> NUMBER IS NOT INTEGER \n\n";
}
	
