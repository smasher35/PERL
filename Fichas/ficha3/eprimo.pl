#!/usr/bin/perl -w
use strict;

my $number;
my $factor;



print "********** O script vai verificar se o número introduzido pelo utilizador é primo ou não  ********** \n\n\n";

#VALIDAÇÃO DO ARGUMENTO, SÓ PODE ACEITAR 1, SE FOR DIFERENTE DE 1:
if(@ARGV != 1) { die ("\nErro de argumento!\n\n");}

# print "Introduza um número inteiro: ---> ";

$number = $ARGV[0];

if ($number >  0 && $number <= 3)
{
	print "# O Número introduzido É PRIMO \n\n";
}
elsif ($number == 5)
{
	print "# O Número introduzido É PRIMO \n\n";
}
else
{
	if ($number%2==0)
	{
		print "# O Número introduzido NÃO É PRIMO \n\n";
	}
	elsif ($number%3==0)
	{
		print "# O Número introduzido NÃO É PRIMO \n\n";
	}
	elsif ($number%5==0)
	{
		print "# O Número introduzido NÃO É PRIMO \n\n";
	}
	else
	{
		print "# O Número introduzido É PRIMO \n\n";		
	}
}




 
