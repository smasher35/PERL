#!/usr/bin/perl -w 
use strict;

system("clear");
#---------------------------------------------------------------------------#
#‎ Filename: mail2Html.pl                                                    #
# Hostname: asus                                                            #
# Author:  Paulo Penicheiro                                                 #
# Created: Wednesday 2012-11-07 16h:57                                      #
#---------------------------------------------------------------------------#
# Especificação do Script:                                                  #
#                                                                           #
# O sript vai adiquirir o endereço electrónico de cada utilizador do        #
# sistema, e vai formatar essa informação e enviar para um ficheiro         #
# de formato HTMl, com o nome indexmail.html                                #
#                                                                           #
#---------------------------------------------------------------------------#

#Iniciar a codificação do script aqui

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

open (FILE, ">indexmail.html")||die "Erro ao abrir o ficheiro de saída!!!!!\n";

print FILE "<HTML>";
print FILE "\n";
print FILE "<HEAD><TITLE>indexmail.html</TITLE></HEAD>";
print FILE "\n";
print FILE "<BODY><H1> Email dos utilizadores do sistema </H1>";
print FILE "\n";New folder

foreach my $User ( @utilizadores )
{
    print FILE "<br /> ";
    print FILE ("$i $User\@$Maquina.$ext");
    $i++;
    
}
# Imprime data
print FILE "<br /> ";
print FILE "<br /> ";
print FILE ("\n\nData: $Data\n");
print FILE"</BODY>";
print FILE "\n";
print FILE"<HTML>";
print FILE "\n";

close FILE;



