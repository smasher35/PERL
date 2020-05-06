#!/usr/bin/perl

#===================================================================================
# descritivo do programa:
#
# serve para verificar quantos argumentos são enviados
#  na execucao de um programa
# 
#===================================================================================
#===================================================================================
#  OUTUP da execução utilizando Linux Mint
#===================================================================================
#./argumentos.pl antonio manuel 35 
# 
# Enviou 3 argumento 
# >> foram enviados argumentos: antonio manuel 35 
# Listar argumentos usando foreach 
# antonio 
# manuel 
# 35 
# listar argumentos, pela ordem indicada
# argumento 1 = antonio
# argumento 2 = manuel
# argumento 3 = 35
#===================================================================================
use strict;   		#forcar uso de variaveis declaradas


if (@ARGV <1) {     							#nao enviou argumentos
	die("erro parametros \n");			#terminar programa
}

if (@ARGV==1) {print "Enviou 1 argumento \n"};  #validar se enviou apenas 1 argumento
if (@ARGV==2) {print "Enviou 2 argumento \n"};	#validar se enviou apenas 2 argumentos
if (@ARGV==3) {print "Enviou 3 argumento \n"};	#validar se enviou apenas 3 argumentos
if (@ARGV==4) {print "Enviou 4 argumento \n"};	#validar se enviou apenas 4 argumentos

print " >> foram enviados argumentos: @ARGV \n";

print "Listar argumentos usando foreach \n";
foreach my $i (@ARGV){
	print "$i \n";
}

#listar argumentos pela ordem, atencao que o array inicia na posicao zero
print "listar argumentos, pela ordem indicada\n";
print "argumento 1 = $ARGV[0]\n";
print "argumento 2 = $ARGV[1]\n";
print "argumento 3 = $ARGV[2]\n";
print "argumento 4 = $ARGV[3]\n";



