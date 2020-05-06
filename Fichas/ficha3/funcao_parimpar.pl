#!/usr/bin/perl -w
use strict;

system("clear");

my $num;
my $parimpar;

print "\n\nIntroduza um número natural --> ";
chomp ($num = <STDIN>);


$parimpar = &parimpar($num);

print "\n\nO número $num é $parimpar!!!!!\n\n";


sub parimpar()
{
	$num = $_[0];


	if ($num % 2 == 0)
	{
		$parimpar = "PAR";
	}
	else
	{
		$parimpar = "IMPAR";
	}

	return ($parimpar);
}


