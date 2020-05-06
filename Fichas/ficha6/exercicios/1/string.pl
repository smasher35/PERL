#!/usr/bin/perl -w
use strict;

my ($word,$words);
my @words;
my $string;

do
{
	
	print "\nintroduza uma palavra, para terminar esscreva FIM ---> ";
	chomp ($word = <STDIN>);
	$word = uc($word);
	push (@words,$word);
	
}while ($word ne "FIM");

pop @words;

foreach $words(@words)
{
	$string = $string."$words\n";
}
print $string   
