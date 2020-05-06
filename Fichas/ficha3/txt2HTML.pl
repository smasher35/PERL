#!/usr/bin/perl -w
use strict;

#system("clear");


#‎Filename: txt2HTML.pl 
#Hostname: asus 
#Author:  smasher 
#Created: Tuesday 2012-03-06 11h:51 
#=============================================================
#script: ./template2perl.pl#Config 
#=============================================================



my @leitura;


open (READ, "<dicionario.txt") ||die "Erro ao abrir o ficheiro";
@leitura = <READ>;
close READ;

open (HTML, ">txt2HTML.html") ||die "Erro ao abrir o ficheiro";



print HTML "<HTML><HEAD><TITLE>txt2HTML.html</TITLE></HEAD>\n";
print HTML "<BODY>\n@leitura<BODY>\n";
print HTML "</HTML>\n";

close HTML;

