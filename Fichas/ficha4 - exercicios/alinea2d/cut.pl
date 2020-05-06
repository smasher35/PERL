#!/usr/bin/perl -w
use strict;

my $col;
my $char;
my $fich;


do
{
      print "Insira a coluna a devolver \n";
      $col = <STDIN>; # recebe valor do teclado
      chomp($col); #retirar o ENTER
}while ($col<0);
		$col = $col-1;       
		print "Insira o caracter a cortar \n";
      $char = <STDIN>; # recebe valor do teclado
      chomp($char); #retirar o ENTER
       print "Insira o ficheiro a cortar \n";
      $fich = <STDIN>; # recebe valor do teclado
      chomp($fich); #retirar o ENTER
my @fich = `cat $fich`; # coloca o conteudo do ficheiro para dentro do array
foreach my $i(@fich)
{
      my @tmp = split (/$char/,$i);
       print "$tmp[$col] \n";
}
