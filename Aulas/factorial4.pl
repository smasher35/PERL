#!/usr/bin/perl -w
use strict;

sub fatorial_recursivo($)
{
	my $n = $_[0]; # obter parâmetro de entrada
		
		if($n <= 1) #condição de paragem
		{
			return 1;
		}
		else # chamada recursiva
		{
			print "$n x ";			
			return $n * &fatorial_recursivo($n-1);
		}
}

##### codigo principal ########

my ($n1,$n2,$fact, $num); #declaração de variáveis

do #controla se o primeiro número é  menor que o segundo e não deixa avançar caso se verifique o contrário 
{
	printf("### INTRODUZA DOIS NÚMEROS INTEIROS EM QUE O PRIMEIRO TEM DE SER MENOR QUE O SEGUNDO ### \n\n"); # texto de indicações
	print "Introduza um número inteiro para calcular o seu factorial ---> ";
	chomp($n1 = <STDIN>);		#recebe o valor do primeiro número																														


	print "\n\n";
	printf("Insira o limite superior para o cálculo do factorial ---> ");
	chomp ($n2 = <STDIN>); #recebe o valor do segundo número

}while ($n1 > $n2); 

$fact =0;
$num = $n1-1; #retira uma unidade à variável pois vai ser incrementada dentro do ciclo antes da chamada da função factorial, somente para efeitos de impressão

for ($n1..$n2) #vai chamar a função recursiva de acordo com o limite dos valores introduzidos
{
	print "\n";
	$num++;	#incrementa a variáve para obter uma impressão correcta
	$fact = &fatorial_recursivo($num); #atribui o valor do factorial À variável
	printf ("\n\nO Factorial de ".$num." é ---> ".$fact." \n"); #imprime o resultado final 
	
}



