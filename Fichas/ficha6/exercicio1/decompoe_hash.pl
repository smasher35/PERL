#!/usr/bin/perl -w 


use strict;



sub mostra_lista($)
{
	my $ref_hash = $_[0];
	#referência da lista associativa
	my $meses;
	foreach $meses (keys(%$ref_hash))
	{
		print("$meses - $$ref_hash{$meses} \n");
	}
	print "\n";
}

sub separa_lista($$$)
{
	my $ref_hash = $_[0];
	my $ref_meses =$_[1];
	my $ref_dias = $_[2];
	#referência da lista associativa
	my $meses;
	#foreach $meses (keys(%$ref_hash))
	#{
		push(@$ref_meses,keys(%$ref_hash));
		push(@$ref_dias, values(%$ref_hash));
	#}

}


sub mostra_arrays($$)
{
	my $ref_meses = $_[0];
	my $ref_dias = $_[1];
	my $i =" ";
	my $d =" ";

	@$ref_meses = sort @$ref_meses;
	
	printf(" ---> ARRAY MESES <--- \n\n");	
	foreach $i (@$ref_meses)
	{	
		#print @$ref_meses;
			print "$i \n";
			
	}
	print "\n\n\n";
	
	foreach $d (@$ref_dias)
	{
		print "$d \n";
	}


	print "\n";


}






# +++++++++++ teste às funções ++++++++++++++++

my %meses = ('01-Jan', '31', '02-Fev', '28','03-Mar', '31', '04-Abr', '30','05-Mai', '31', '06-Jun', '30','07-Jul', '31', '08-Ago', '31','09-Set', '30', '10-Out', '31','11-Nov', '30', '12-Dez', '30');
my (@meses,@dias);
my $mes ="";

print("Lista inicial:\n\n");


separa_lista(\%meses,\@meses, \@dias);

mostra_lista(\%meses);

mostra_arrays (\@meses,\@dias);



