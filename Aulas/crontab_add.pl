#!/usr/bin/perl -w
use strict;


### SCRIPT VAI ADICIONAR UM ENTRADA NO CRONTAB ####

my ($min,$hora,$dia_mes,$mes,$dia_semana,$user,$command); #DECLARAÇÃO DE VARIÁVEIS



open (FICHEIRO, '>> /home/smasher/Desktop/teste_cron.txt')|| die ("Ocorreu um erro a abrir o ficheiro: $! \n"); #ABRE O FICHEIRO EM MODO ESCRITA

printf ("\n 1º PARÂMETRO - INTRODUZA OS MINUTOS --> 0 - TODOS OU ESPECIFICE OS MINUTOS --> ");
chomp ($min = <STDIN>);
printf ("\n 2º PARÂMETRO - INTRODUZA AS HORAS --> 0 - TODAS OU ESPECIFICE AS HORAS --> ");
chomp ($hora = <STDIN>);

printf ("\n 3º PARÂMETRO - INTRODUZA DIA DO MÊS --> 0 - TODOS OU ESPECIFICE O DIA DO MÊS --> "); # INTRODUÇÃO DE PARÂMETROS
chomp ($dia_mes = <STDIN>);

printf ("\n 4º PARÂMETRO - INTRODUZA o MÊS --> 0 - TODOS OU ESPECIFICE O MÊS --> ");
chomp ($mes = <STDIN>);

do # CICLO DE VALIDAÇÃO
{
	printf ("\n 5º PARÂMETRO - INTRODUZA O DIA DA SEMANA --> 0 - TODOS * 1 - Seg. * 2 - Ter * 3 - Qua * 4 - Qui * 5 - Sex * 6 - Sab * 7 - Dom ");
	chomp ($dia_semana = <STDIN>);
}while ($dia_semana > 7); #CONDIÇÃO DE VALIDAÇÃO

printf ("\n 6º PARÂMETRO - INTRODUZA O NOME DO UTILIZADOR --> ");
chomp ($user = <STDIN>);

do #CICLO DE VALIDAÇÃO
{
	printf ("\n 7º PARÂMETRO - INTRODUZA O COMANDO A EXECUTAR --> ");
	chomp ($command = <STDIN>);
}while ($command eq " "); #CONDIÇÃO DE VALIDAÇÃO

if ($min == 0) #CONDIÇÃO ESPECIAL, SE FOR O ATRIBUI ASTERISCO À VARIÁVEL PARA ESTAR DE ACORDO COM O FORMATO DO FICHEIRO CRONTAB
{
	$min = "*";
}

if ($hora == 0) #CONDIÇÃO ESPECIAL, SE FOR O ATRIBUI ASTERISCO À VARIÁVEL PARA ESTAR DE ACORDO COM O FORMATO DO FICHEIRO CRONTAB
{
	$hora = "*";
}

if ($dia_mes == 0)#CONDIÇÃO ESPECIAL, SE FOR O ATRIBUI ASTERISCO À VARIÁVEL PARA ESTAR DE ACORDO COM O FORMATO DO FICHEIRO CRONTAB
{
	$dia_mes = "*";
}

if ($mes == 0)#CONDIÇÃO ESPECIAL, SE FOR O ATRIBUI ASTERISCO À VARIÁVEL PARA ESTAR DE ACORDO COM O FORMATO DO FICHEIRO CRONTAB
{
	$mes = "*";
}

if ($dia_semana == 0)#CONDIÇÃO ESPECIAL, SE FOR O ATRIBUI ASTERISCO À VARIÁVEL PARA ESTAR DE ACORDO COM O FORMATO DO FICHEIRO CRONTAB
{
	$dia_semana = "*";
}


print FICHEIRO ("$min $hora $dia_mes $mes $dia_semana $user $command\n"); #IMPRIME A SEQUÊNCIA DESEJADA NO FICHEIRO QUE FOI ABERTO EM MODO DE ESCRITA
print "\n\n";


close FICHEIRO; #FECHA O FICHEIRO QUE FOI ABERTO ANTERIORMENTE
	
