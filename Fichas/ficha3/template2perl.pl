#!/usr/bin/perl -w
use strict;


my $created = `date +"%A %Y-%m-%d %Hh:%M"`;
chomp ($created);
my $maquina = `hostname`;
chomp ($maquina);
my $creator = "Paulo Penicheiro";
chomp ($creator); 

        

open (FICHEIRO, ">".$ARGV[0] )|| die ("Ocorreu um erro a abrir o ficheiro: $! \n");

print FICHEIRO ("#!/usr/bin/perl -w \n");
print FICHEIRO ("use strict\; \n");
print FICHEIRO ("\n");
print FICHEIRO ("system(\"clear\")\;\n");
print FICHEIRO ("#---------------------------------------------------------------------------#\n");
print FICHEIRO ("#‎ Filename: $ARGV[0]                                                        #\n");                                                   
print FICHEIRO ("# Hostname: $maquina                                                        #\n"); 
print FICHEIRO ("# Author:  $creator                                                         #\n");
print FICHEIRO ("# Created: $created                                                         #\n");
print FICHEIRO ("#---------------------------------------------------------------------------#\n");
print FICHEIRO ("# Especificação do Script:                                                  #\n");
print FICHEIRO ("#                                                                           #\n");
print FICHEIRO ("#                                                                           #\n");
print FICHEIRO ("#                                                                           #\n");
print FICHEIRO ("#                                                                           #\n");
print FICHEIRO ("#                                                                           #\n");
print FICHEIRO ("#---------------------------------------------------------------------------#\n");

print FICHEIRO ("my (variaveis a declarar)\;\n");

print FICHEIRO ("#Iniciar a codificação do script aqui\n");




print ("Ficheiro aberto com sucesso!!!! \n");
close(FICHEIRO);

`chmod +x $ARGV[0]`;


