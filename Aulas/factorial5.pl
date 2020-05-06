#!/usr/bin/perl -w
use strict;

##### FUNÇÃO FACTORIAL UTILIZANDO O MÉTODO RECURSIVO #####

sub fatorial_recursivo($)
{
	my $n = $_[0]; # OBTER PARÂMETRO DE ENTRADA
		
		if($n <= 1) #CONDIÇÃO DE PARAGEM
		{
			return 1;
		}
		else # CHAMADA RECURSIVA
		{
			return $n * &fatorial_recursivo($n-1);
		}
}

###### FUNÇÃO IMPRIME SEQUENCIA FACTORIAL ###########

sub imprime_seq($)
{
	my $k = $_[0];   # DECLARAÇÃO DE VARIÁVEIS
	my @temp;
	my ($temp, $i);
	
	do   				
	{
		push(@temp, $k);  # POR CADA NUMERO QUE VÁ SER CALCULADO O SEU FACTORIA,L ENVIA TODA A SUA SEQUÊNCIA PARA UM ARRAY
		$k--;    #DECREMENTA  O NÚMERO
		
	}while ($k > 1); # REALIZA A OPERAÇÃO DE INSERÇÃO NO ARRAY ENQUANTO O  NÚMERO FOR MAIOR QUE 1

	foreach $temp(@temp) # VAI FAZER A ITERAÇÃO DO ARRAY QUE CONTEM A SEQUÊNCIA FACTORIAL DO NÚMERO
	{
		$i = $i."$temp x "; #ENVIA CADA LINHA DO ARRAY CONCATENADA COM O CARACTER "x" PARA UMA VARIAVEL
	}
	return $i; #DEVOLVE O VALOR DA VARIÁVEL PARA O CODIGO PRINCIPAL
}
	
##### CÓDIGO PRINCIPAL ########

my ($n1,$n2,$fact, $num,$seq); #DECLARAÇÃO DE VARIÁVEIS

do # CICLO QUE CONTROLA SE O PRIMEIRO NÚMERO É MENOR QUE O SEGUNDO E NÃO DEIXA AVANÇAR CASO SE VERIFIQUE O CONTRÁRIO 
{
	print "\n";	
	printf("### INTRODUZA DOIS NÚMEROS INTEIROS EM QUE O PRIMEIRO TEM DE SER MENOR QUE O SEGUNDO ### \n\n"); # MENSAGENS ENVIADAS AO UTILIZADOR
	print "Introduza um número inteiro para calcular o seu factorial ---> ";
	chomp($n1 = <STDIN>);		#RECEBE O VALOR DO PRIMEIRO NÚMERO																														
	print "\n\n";
	printf("Insira o limite superior para o cálculo do factorial ---> ");
	chomp ($n2 = <STDIN>); #RECEBE OVALOR DO SEGUNDO NUMERO
}while ($n1 > $n2); 

$fact =0;
$num = $n1-1; #RETIRA UMA UNIDADE à VARIÁVEL, E VAI SER INCREMENTADA DENTRO DO CICLO ANTES DA CHAMADA DA FUNÇÃO FACTORIAL, SOMENTE PARA EFEITOS DE OUTPUT
print "\n=================================================================== \n\n";
for ($n1..$n2)#VAI CHAMAR A FUNÇÃO RECURSIVA N VEZES QUANTAS FOREM DADAS PELOS LIMITES INTRODUZIDOS PELO UTILIZADOR
{ 
	$num++;	#INCREMENTA A VARIÁVEL PARA OBTER UM OUTPUT CORRECTO
	$fact = &fatorial_recursivo($num); #ATRIBUI O VALOR DO FACTORIAL à VARIÁVEL
	$seq = &imprime_seq($num); #VAI DEVOLVER A SEQUÊNCIA FACTORIAL PARA DENTRO DO ARRAY @seq
	printf ("\n\nO Factorial de ".$num." ---> ".$seq."1 é ".$fact." \n"); #IMPRIME RESULTADO FINAL
}
print "\n\n";


