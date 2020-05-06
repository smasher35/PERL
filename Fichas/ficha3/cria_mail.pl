#!/usr/bin/perl -w
use strict;
#-----------------------------------------------------------------
# Programa que constrói o endereço de correio electrónico de todos
# os utilizadores registados na máquina
# Recorre ao operador de “substituição de comando”
# Patrício, 14-04-2000
#-----------------------------------------------------------------
# Variável Maquina recebe o nome completo do computador (e.g. sounix)

system("clear");



my $Maquina = `hostname -f`;
my $Data = `date +%d-%m-%Y`;
my $ext = 'pt';
# Recolhe data do sistema
# Array de utilizadores recebe o nome de todos os utilizadores do
# sistema


my @utilizadores = `cut -f1 -d: /etc/passwd | sort`;
my $i = 1;
chomp(@utilizadores);
chomp($Maquina);
chomp ($ext);
foreach my $User ( @utilizadores )
{
    print ("$i $User\@$Maquina.$ext");
    $i++;
    print "\n";
}
# Imprime data
print ("\n\nData: $Data\n");

