#!/usr/bin/perl -w
use strict;



my (@proc,@prockeys,@procvalues,@sortedproc,@temp);
my ($totprocs,$procs,$sortedproc);
my %procs;






@proc = `ps aux |tr -s ' ' '#'|cut -f1 -d#`;
@sortedproc = sort(@proc);



$totprocs =0;
foreach $sortedproc(@sortedproc)
{
	if (exists $procs{$sortedproc})
	{
		$procs{$sortedproc} = $procs{$sortedproc} +1;	
	}
	else
	{
		$procs{$sortedproc} = 1;
				
	}		

	$totprocs ++;
	
}


foreach $procs ( sort keys %procs)
{
	chomp ($procs);	
	printf ($procs." ---> ".$procs{$procs}."\n");
	chomp ($procs);
}

print "==========================================================\n";
printf ("O número total de processos é ---> ".$totprocs."\n\n\n");

print " novo tipo de impressão \n\n";


while (@temp = each(%procs))
{
	chomp(@temp);
	print " -> @temp <- \n";
}
