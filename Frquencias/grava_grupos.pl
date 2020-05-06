#!/usr/bin/perl -w
use strict;


my (@grupos,@sortedgrupos);
my ($totgrupos,$grupos,$sortedproc);


open (FICHEIRO1 , "/etc/group")|| die ("Ocorreu um erro ao abrir o ficheiro \n");
open (FICHEIRO, ">".$ARGV[0] )|| die ("Ocorreu um erro a abrir o ficheiro: $! \n");

@grupos = <FICHEIRO1>;
@sortedgrupos = sort(@grupos);

$totgrupos =0;

foreach $grupos(@sortedgrupos)
{
	$totgrupos = $totgrupos +1;
}


print FICHEIRO @sortedgrupos;
print FICHEIRO "==========================================================\n";
print FICHEIRO ("O número total de grupos é ---> ".$totgrupos."\n\n\n");

close(FICHEIRO);
close(FICHEIRO1);
