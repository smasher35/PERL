#!/usr/bin/perl -w
use strict;

srand (time);

my (@array, @outarray,@sortedarray);
my ($i,$rand,$k, $printarray);

system ("clear");

for ($i = 1 ; $i <= 6; $i ++)
{
		$rand = int(rand(50));
		push( @array, $rand);		
}
		


@sortedarray = sort {$a <=> $b} @array;
@outarray = join("\n", @sortedarray);
print @outarray;
print "\n\n";






