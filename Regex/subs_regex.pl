#!/usr/bin/perl -w 
use strict;

#‎Filename: subs_regex.pl 
#Hostname: asus 
#Author:  smasher 
#Created: Tuesday 20120110 16h09 
#=============================================================
#Config 
#=============================================================




my $s = 'abcdefcdcd';
my $i = 'X';
my $j = 'W';

#substituição é feita em cada iteracção

while ($s =~ s/CD/$i/i)
{
	print "1: $s \n";
	$i++; # incrementa a variável $i passado de X para Y e de seguida para Z
}

#substituição é feita uma só vez, pois é especificada a opção g

$s = 'abcdefcdcd';
while ($s =~ s/CD/$j/ig)
{
	print "\n\n2: $s \n";
	$j++; # incrementa a variável $i passado de X para Y e de seguida para Z
}

