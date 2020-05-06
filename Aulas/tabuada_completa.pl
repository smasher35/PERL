#!/usr/bin/perl -w
use strict;



my $numero;
my ($i,$k);
my $calculo;

system("clear");
printf (" O Script vai efectuar a tabuada completa!!! \n");


for ($i=1; $i<=10; $i++)
  {
    for ($k=1; $k <=10; $k++)
      {
	    $calculo = $i*$k;
	    if ($calculo < 10){print ("$k x $i = 0$calculo  |");
	    }else {	
	    	print ("$k x $i = $calculo  |");
		
	    }
      }
	print "\n";
   }

