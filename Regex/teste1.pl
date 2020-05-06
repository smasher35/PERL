#!/usr/bin/perl -w
use strict;


my $word;

$word ="";
print "Introduza uma palavra ---> ";
print "\n";

chomp ($word = <STDIN>);



if ($word =~ m/si+e??s/)
{
	print "\nTRUE\n";
}
else
{
	print "\nFALSE\n";	
	
}