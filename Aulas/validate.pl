#!/usr/bin/perl -w
use strict;

my $num;



print " introduza um numero --->  ";  # O SCRIPT VAI VERIFICAR SE A ENTRADA É NÚMERO OU LETRA E DEVOLVE SIM SE FOR NUM OU NÃO SE FOR LETRA
chomp ($num = <STDIN>);

if ($num =~ /^\d+$/)
{
	print "YES";
	print "\n\n";
}
elsif ($num =~ m/^-?\d+[\/|\.]\d+$/)
{
	print "YES";
	print "\n\n";
}
else	
{
	print "NO";
	print "\n\n";
}

