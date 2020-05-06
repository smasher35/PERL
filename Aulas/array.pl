#!/usr/bin/perl -w
use strict;


my @palavras;
my @sorted;
my $i;
my $word;



for ($i = 1 ; $i <=5 ; $i++)
{
        	print ("Introduza uma palavra: \n");
        	chomp ($word = <STDIN>);
		push (@palavras,($word));
		
        	
}

@sorted = sort @palavras;
print "\n \n";
print "Aqui estão os elementos do Array ordenados:\n";
print "\n\n";
print join("\n",@sorted);
print"\n\n";

