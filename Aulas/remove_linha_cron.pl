#!/usr/bin/perl -w
use strict;

my ($linha);

open (FICHEIRO, '>> /home/smasher/Desktop/teste_cron.txt')|| die ("Ocorreu um erro a abrir o ficheiro: $! \n"); #ABRE O FICHEIRO EM MODO ESCRITA


while (<FICHEIRO>)
{
	
