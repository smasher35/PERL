#!/usr/bin/perl -w

use strict;



my $pal = "";




do
{
if($pal){ print("a palavra escrita foi: $pal \n"); }
print("Escreva uma palavra: ");
chomp($pal=<STDIN>);
}until ( uc($pal) eq "FIM" )

