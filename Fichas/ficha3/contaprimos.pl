#!/usr/bin/perl -w
use strict;

my $number;
my $factor;
my $primo;



print "********** O script vai contar quantos números primos há entre 1 e 100000  ********** \n\n\n";



$primo =0;
$number = 1;

for ($number ==1 ; $number <= 100000; $number ++)
{
	if ($number <=3)
	{
		#print "# O Número introduzido É PRIMO \n\n";
		$primo = $primo +1;
	}
	elsif ($number == 5)
	{
		#print "# O Número introduzido É PRIMO \n\n";
		$primo = $primo +1;
	}
	else
	{
		if ($number%2==0)
		{
			#print "# O Número introduzido NÃO É PRIMO \n\n";
			
		}
		elsif ($number%3==0)
		{
			#print "# O Número introduzido NÃO É PRIMO \n\n";
			
		}
		elsif ($number%5==0)
		{
			#print "# O Número introduzido NÃO É PRIMO \n\n";
			
		}
		else
		{
			#print "# O Número introduzido É PRIMO \n\n";
			$primo = $primo +1;		
		}
	}
}

printf ("# No intervalo [1..100000] há ---> ".$primo." números primos! \n\n");

 
