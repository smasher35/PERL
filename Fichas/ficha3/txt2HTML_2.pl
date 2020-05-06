#!/usr/bin/perl -w
use strict;

system("clear");

#‎Filename: txt2HTML.pl 
#Hostname: asus 
#Author:  smasher 
#Created: Tuesday 2012-03-06 11h:51 
#=============================================================
#script: ./template2perl.pl#Config 
#=============================================================

my (@leitura,@escrita);
my $file;

if(@ARGV != 1) { die ("\nErro de argumento tem de dar um ficheiro .txt de entrada para ser convertido em código HTML\n\n");}

open(READ,"<@ARGV") || die "Erro ao abrir o ficheiro!!!\n";

@leitura = <READ>;

close READ;

$file = $ARGV[0];
$file =~ s/\.[^.]+$//; #retira a extensão ao ficheiro

#print "$file\n";

chomp($file);

open (HTML, ">$file.html") ||die "Erro ao abrir o ficheiro";

print HTML "<HTML><HEAD><TITLE>txt2HTML.html</TITLE></HEAD>\n";
print HTML "<BODY>\n@leitura<BODY>\n";
print HTML "</HTML>\n";

close HTML;

open(HTML,"<$file.html") || die "Erro ao abrir o ficheiro!!!\n";

print "\n\n--> Conteúdo do ficheiro dicionario.html <--\n\n"; 

@escrita = <HTML>;
print "@escrita\n";

close HTML;



