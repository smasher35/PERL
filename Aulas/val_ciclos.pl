#!/usr/bin/perl -w
use strict;

srand (time);

my @array;
my ($i,$rand,$k, $printarray);

system ("clear");

for ($k = 1 ; $k <= 3 ; $k++)
{
	for ($i = 1 ; $i <= 6; $i ++)
	{
		$rand = int(rand(50));
		print $rand."\n";		
	}
		print " ###### \n";
}






