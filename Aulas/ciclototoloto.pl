#!/usr/bin/perl -w
use strict;

# Script tenta contar o número de chaves possíveis para os 6 números do totoloto
# O Script emprega o modo da força bruta...
# Um método mais refinado seria proceder ao cálculo de c(49,6) em que c representa o número de "combinações".
# C(49,6) = 49! / (6!(49-6)!) = 49!/(6!43!) = 44*45*46*47*48*49 / 6!;
# C(49,6) = 13983816
#


my $conta = 0; #delcara a variável conta
my ($i,$j,$k,$l,$m,$n);


for ($i = 1; $i <= 44; $i++)
  {
    printf ("i=$i, Conta=$conta \n");
    for ($j = $i + 1; $j <= 45; $j++)
      {
         for ($k = $j + 1; $k <= 46; $k++) 
           {
             for ($l = $k + 1; $l <= 47; $l++)
               {
                 for ($m = $l + 1; $m <= 48; $m++) 
                   {	
	              for ($n = $m + 1; $n <= 49; $n++) 
                        {
       			  $conta++;
			}
	           }
               }
            }
	}
   }

# Resultado

print ("Nº de chaves (contador): $conta \n");

print "\n";	
