#!/usr/bin/perl -w
use strict;

my $Teste_S;

my @Strings_Teste_L = ("","+","+1","-1.23","5.3","5.",".8","0.6","-.5");


foreach my $Teste_S(@Strings_Teste_L)
{
	printf(" Teste: ’$Teste_S’:%d\n", IsNumeric3($Teste_S));
}



sub IsNumeric3()
{
	my $var;
	
	$var = $_[0];
	
	if ($var =~ m/^-?\d+$/)
	{
		1;
	}
	elsif ($var =~ m/^-\d+[\/|\.]\d+$/)
	{
		1;
	}
	else
	{
		print 0;
	}
	
	
	
	
}