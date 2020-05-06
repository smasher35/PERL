#!/usr/bin/perl -w 
use strict; 

system("clear");
#---------------------------------------------------------------------------#
#‎ Filename: users2HTML.pl                                                   #
# Hostname: asus                                                            #
# Author:   Paulo Penicheiro                                                #
# Created: Wednesday 2012-03-07 11h:38                                      #
#---------------------------------------------------------------------------#
#Config                                                                     #
#---------------------------------------------------------------------------#
#Epecificação do Script:                                                    #
#                                                                           #
# O script vai dar um ficheiro de entrada index.html                        #
# Vai buscar a informação dos utilizadores registados no sistema            #
# Vai escrever essa informação em forma HTML no ficheiro que foi dado de    #
# entrada                                                                   #
#                                                                           #
#---------------------------------------------------------------------------#

my (@users);
my $users;
#Iniciar a codificação do script aqui

@users = `cut -f1 -d: /etc/passwd | sort`;

chomp(@users);
print "<HTML>";
print "\n";
print "<HEAD><TITLE>index.html</TITLE></HEAD>";
print "\n";
print "<BODY><H1> utilizadores do sistema </H1>";
print "\n";

foreach $users(@users)
{
    print "$users\n";
    print "<br /> ";
}

print "</BODY>";
print "\n";
print "</HTML>";
print "\n";
print "\n\n";