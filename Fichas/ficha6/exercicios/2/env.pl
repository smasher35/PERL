#!/usr/bin/perl

#===================================================================================
# descritivo do programa:
#
# apresentar todas as variaveis de ambiente existentes
#
#===================================================================================
#===================================================================================
#  OUTUP da execução utilizando ubuntu
#===================================================================================
# ./env.pl
#
#  (... varias linhas ..)
# WINDOWPATH -- 7 
# XAUTHORITY -- /home/user/.Xauthority 
# XDG_DATA_DIRS -- /usr/local/share/:/usr/share/:/usr/share/gdm/ 
# XDG_SESSION_COOKIE -- ff4d03021d5c52e1c1057fb949f5bc33-1271714444.448652-1961982319 
#
# Utilizador corrente: user
# Directorio corrente: /home/user/perl/
#===================================================================================
use strict;

#percorrer array ORDENADO
foreach my $i (sort keys(%ENV))
{
	print " $i = $ENV{$i} \n"
}

#consultarutilizador actual directamente
my $user= $ENV{"USERNAME"};
print "Utilizador corrente: $user\n";

#consultar directorio corrente directamente
my $inf= $ENV{"PWD"};
print "Directorio corrente: $inf\n";
