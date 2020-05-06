#!/usr/bin/perl -w
use strict;

my $operando1;
my $checkopera1 ;				#DECLARAÇÕES DAS VARIÁVEIS
my $resultado;



sub main
{
	my ($oper1, $oper2, $operacao);

	printf("# ************************ O SCRIPT VAI SIMULAR UMA CALCULADORA *********************************** \n\n\n\n");
	
	OP1:	
	printf("# *** Introduza o primeiro Número ---> ");
	chomp ($oper1 = <STDIN>); 												# INTRODUZ O PRIMEIRO VALOR 
	print "\n";
	
	if ($oper1 =~ m/^-?\d+$/)    									# LINHA DE VALIDAÇÃO DE VALOR NUMÉRICO INTEIRO E NEGATIVO
	{
		goto OPERADOR;													# CASO SEJA UM VALOR NUMÉRICO AVANÇA PARA AINTRODUÇÃO DA OPERAÇÃO
	}
	elsif ($oper1 =~ m/^-?\d+[\/|\.]\d+$/)															#LINHA DE VALIDAÇÃO DE VALOR NUMÉRICO REAL E NEGATIVO															
	{
		goto OPERADOR;
	}
	else
	{	
		printf (" ---> VALOR INCORRECTO <---, Introduza um novo valor... \n"); 
		goto OP1;															#CASO NÃO SEJA UM VALOR NUMÉRICO REGRESSA À INSERÇÃO DO VALOR
	}
	
	OPERADOR:	
	printf (" Introduza a operação desejada +  somar, - subtrair, / Dividir, * Multiplicar ---> ");
	chomp ($operacao = <STDIN>);											# VALIDAÇÃO DA OPERAÇÃO
	
	print "\n";
		
	if ($operacao eq "+")													#VERIFICA SE É UMA SOMA, CASO SEJA VERDADEIRO AVANÇA PARA A INTRODUÇÃO DO SEGUNDO NÚMERO
	{
		goto OP2;
	}	
	elsif ($operacao eq "-")												#VERIFICA SE É UMA SUBTRACÇÃO, CASO SEJA VERDADEIRO AVANÇA PARA A INTRODUÇÃO DO SEGUNDO NÚMERO
	{
		goto OP2;
	}
	elsif ($operacao eq "*")												#VERIFICA SE É UMA MULTIPLICAÇÃO, CASO SEJA VERDADEIRO AVANÇA PARA A INTRODUÇÃO DO SEGUNDO NÚMERO
	{
		goto OP2;
	}
	elsif ($operacao eq "/")												#VERIFICA SE É UMA DIVISÃO, CASO SEJA VERDADEIRO AVANÇA PARA A INTRODUÇÃO DO SEGUNDO NÚMERO
	{
		goto OP2;
	}
	else
	{
		print "\n\n";		
		printf (" ----> OPERAÇÃO ERRADA <--- - Volte a introduzir a operação correcta... \n\n");		#CASO A OPERAÇÃO INTRRODUZIDA NÃO SEJA VÁLIDA, REGRESSA À INSERÇÃO DA MESMA
		goto OPERADOR;
	}
	
	OP2:
	print "\n";
	printf("# *** Introduza o segundo Número ---> ");
	chomp ($oper2 = <STDIN>);																			#INSERÇÃO DO SEGUNDO NÚMERO
	print "\n";
	
	if ($oper2 =~ m/^-?\d+$/)																			#LINHA DE VALIDAÇÃO DE VALOR NUMÉRICO INTEIRO E NEGATIVO
	{
		goto OPERACOES;																					#CASO SEJA VERDADEIRO, AVANÇA PARA AS OPERAÇÕES
	}
	elsif ($oper2 =~ m/^-?\d+[\/|\.]\d+$/)															#LINHA DE VALIDAÇÃO DE VALOR NUMÉRICO REAL E NEGATIVO															
	{
		goto OPERACOES;
	}
	else
	{	
		printf (" ---> VALOR INCORRECTO <---, Introduza um novo valor... \n"); 
		goto OP2;																							#CASO O VALOR NÃO SEJA NUMÉRICO, VOLTA À INSERCÇÃO DO MESMO
	}
		
	
	OPERACOES:																					#ZONA QUE VAI ANALIZAR A OPERAÇÃO INTRODUZIDA E JÁ VALIDADA
	if ($operacao eq "+")																	#SE FOR UMA SOMA
	{
		$resultado = soma($oper1,$oper2);												# ATRIBUI À VARIAVEL $RESULTADO O VALOR DA FUNÇÃO SOMA QUE RECEBE COMO VALORES OS DOIS OPERANDOS												
		printf ("# O resultado de ".$oper1." ".$operacao." ".$oper2." = ".$resultado);	#IMPRIME O VALOR DA OPERAÇÃO ASSIM COMO TODOS OS OPERANDOS
		print "\n";	
	}
	elsif ($operacao eq "-")																#SE FOR UMA SUBTRACÇÃO
	{
		$resultado = subtracao($oper1,$oper2);											# ATRIBUI À VARIAVEL $RESULTADO O VALOR DA FUNÇÃO SUBTRACCAO QUE RECEBE COMO VALORES OS DOIS OPERANDOS
		printf ("# O resultado de ".$oper1." ".$operacao." ".$oper2." = ".$resultado);#IMPRIME O VALOR DA OPERAÇÃO ASSIM COMO TODOS OS OPERANDOS
		print "\n";	
	}
	elsif ($operacao eq "*")																#SE FOR UMA MULTIPLICAÇÃO
	{
		$resultado = multiplica($oper1,$oper2);										# ATRIBUI À VARIAVEL $RESULTADO O VALOR DA FUNÇÃO MULTIPLICA QUE RECEBE COMO VALORES OS DOIS OPERANDOS
		printf ("# O resultado de ".$oper1." ".$operacao." ".$oper2." = ".$resultado); #IMPRIME O VALOR DA OPERAÇÃO ASSIM COMO TODOS OS OPERANDOS
		print "\n";	
	}
	elsif ($operacao eq "/")																#SE FOR UMA DIVISÃO
	{
		$resultado = divisao($oper1,$oper2);											# ATRIBUI À VARIAVEL $RESULTADO O VALOR DA FUNÇÃO DIVISAO QUE RECEBE COMO VALORES OS DOIS OPERANDOS
		printf ("# O resultado de ".$oper1." ".$operacao." ".$oper2." = ".$resultado); #IMPRIME O VALOR DA OPERAÇÃO ASSIM COMO TODOS OS OPERANDOS
		print "\n";	
	}
	
}

main ();																						#CHAMA A FUNÇÃO MAIN


sub soma()																					#FUNÇÃO SOMA
{
	my $resultado;
	
	return ($resultado = $_[0] + $_[1]);
}

sub subtracao()																			#FUNÇÃO SUBTRACAO
{
	my $resultado;
	
	return ($resultado = $_[0] - $_[1]);
}

sub multiplica()																			#FUNÇÃO MULTIPLICA
{
	my $resultado;
	
	return ($resultado = $_[0] * $_[1]);
}

sub divisao()																				#FUNÇÃO DIVISAO
{
	my $resultado;
		
	return ($resultado = $_[0] / $_[1]);
}

	
