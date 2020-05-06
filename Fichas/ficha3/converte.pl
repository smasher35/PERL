#!/usr/bin/perl -w
use strict;


my ($resposta, $fahrenheit, $celsius, $graus,);

START:
printf ("O sript vai converter as temperaturas de Celsius para Fahrenheit e vice-versa!!  \n\n");


printf ("Prima F ---> Celsius em Fahrenheit \n");
printf ("Prima C ---> Fahrenheit em Celsius \n\n\n"); #menus de informação ao utilizador
print "Introduza aqui a letra correspondente: ---> ";
chomp($resposta = <STDIN>);
$resposta = uc $resposta; #converte a letra introduzida para maiúscula

print "\n\n";
if ($resposta eq "C") #executa as operações caso a resposta seja igual a C
{
	printf ("Introduza o valor em graus Farenheit! \n"); #pede ao utilizador o valor em graus Farenheit
	$graus = <STDIN>; #recebe o valor do teclado
	chomp($graus); #elimina o ENTER do teclado
	$celsius = (5*($graus-32)/9); # variavel que vai realizar a conversão dos graus
	printf ("A temperatura em Celsius é: %.2f \n", $celsius); #Output final do programa
}
elsif ($resposta eq "F") #executa as operações caso a resposta seja igual a F
{
	printf ("Introduza o valor em graus Celisus! \n"); #pede ao utilizador o valor em graus Farenheit
	$graus = <STDIN>; #recebe o valor do teclado
	chomp($graus); #elimina o ENTER do teclado
	$fahrenheit = ($graus*1.8+32); # variavel que vai realizar a conversão dos graus
	printf ("A temperatura em Celsius é: %.2f \n", $fahrenheit); #Output final do programa	com duas casas decimais
}
else #executa as operações caso a resposta seja diferente de C e de F
{
	printf ("Introduziu a letra errada, volta tentar com a opção correcta!  \n\n");
	sleep 1;
	goto START;
}





 
