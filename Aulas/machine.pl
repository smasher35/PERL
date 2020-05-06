#!/usr/bin/perl -w
#-----------------------------------------------------------------
# Programa que constrói o endereço de correio electrónico de todos
# os utilizadores registados na máquina
# Recorre ao operador de “substituição de comando”
# Patrício, 14-04-2000
#-----------------------------------------------------------------
# Variável Maquina recebe o nome completo do computador (e.g. sounix)
$Maquina = `hostname -f`;
$Data = `date +%d-%m%Y`;
# Recolhe data do sistema
# Array de utilizadores recebe o nome de todos os utilizadores do
# sistema
@utilizadores = `cut -f1 -d: /etc/passwd | sort`;
$i = 1;
chomp(@utilizadores);
foreach $User ( @utilizadores )
{
print ("$i $User\@$Maquina");
$i++;
}
# Imprime data
print ("Data: $Data\n");

