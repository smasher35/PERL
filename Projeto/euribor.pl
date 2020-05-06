#!/usr/bin/perl -w 
use strict;
use 5.010; 

#‎Filename: euribor.pl 
#Hostname: asus 
#Author:  Paulo Penicheiro e Luis Santos
#Created: Friday 20120203 11h10 
#================================================================================================================================
#O SCRIPT VAI EXTRAIR INFORMAÇÃO DE UM SITE E ENVIAR ESSA INFORMAÇÃO POR MAIL PARA OS UTILIZADORES CONSTANTES DE UM FICHEIRO TXT
#================================================================================================================================


#============================================= FUNÇÃO VALIDATE USERS ======================================================================================================================================
sub validateusers()
{
	my ($users,$fimciclo); #DCLARAÇÃO DE VARIÁVEIS DE UTILIZADOR
	my $to;
	my $mensagem;
	my $subject;
	
	$to = "smasher35\@gmail.com,lmds73\@gmail.com";

	$users = '/home/smasher/Desktop/trabalhofinal/utilizadores.txt'; #DEFINE O NOME DO FICHEIRO QUE VAI CONTER OS EMAILS
									
	if (-f $users) #TESTA SE O FICHEIRO EXISTE, CASO SE VERIFIQUE A CONDIÇÃO ABRE O FICHEIRO EM MODO DE ESCRITA
	{
		if (-z $users) #TESTA SE O FICHEIRO ESTÁ VAZIO, CASO SE VERIFIQUE A CONDIÇÃO (-z devolve TRUE se o ficheiro estiver vazio)
		{
				$subject = "***WARNING***"; #ATRIBUI O ASSUNTO À VARIÁVEL
				$mensagem = "O Ficheiro utilizadores.txt encontra-se vazio!!!!\n"; #ATRIBUI A MENSAGEM DO MAIL À VARIÁVEL			
				sendEmail($to,$subject,$mensagem); #CHAMA A FUNÇÃO QUE ENVIA O MAIL AO ADMNINISTRADOR
				exit; #TERMINA O SCRIPT
		}
		else #SE O FICHEIRO EXISTE E NÃO ESTÁ VAZIO INICIA TODO O PROCESSO DE IR BUSCAR OS DADOS AO SITE E ENVIAR O EMAIL AOS UTILIZADORES CONTIDOS NO FICHEIRO
		{
				wgetdata(); # CHAMA A FUNÇÃO QUE VAI DESENCADEAR O PROCESSO DE EXTRAIR A INFORMAÇÃO DO SITE
		}				
	}
	else #SE O FICHEIRO NÃO EXISTE ENVIA UM EMAIL AOS ADMIONISTRADORES DO SISTEMA
	{
				$subject = "***WARNING***"; #ATRIBUI O ASSUNTO À VARIÁVEL
				$mensagem = "O Ficheiro utilizadores.txt não existe!!!!\n";	#ATRIBUI A MENSAGEM DO MAIL À VARIÁVEL		
				sendEmail($to,$subject,$mensagem);#CHAMA A FUNÇÃO QUE ENVIA O MAIL AO ADMNINISTRADOR
				exit;	#TERMINA O SCRIPT
	}
}
#======================================= FIM DA FUNÇÃO VALIDATE USERS ====================================================================================================================================


#====================================== FUNÇÃO DE DOWNLOAD DA INFORMAÇÃO DO SITE =========================================================================================================================
sub wgetdata()
{
	my $webfile;
	my ($today, $yesterday,$euribor3today,$euribor3yesterday,$euribor6today,$euribor6yesterday,$euribor12today,$euribor12yesterday); #DECLARAÇÃO DE VARIÁVEIS
	my ($ratestatus3meses,$ratestatus6meses,$ratestatus12meses);
	my ($eu3today,$eu6today,$eu12today,$status3,$status6,$status12);
	my ($monfri,$threedaysago);

	
	$monfri = `date "+%u"`; #ATRIBUI O VALOR NUMÉRICO DO DIA CORRENTE SA SEMANA POR EXEMPLO SE HOJE FOR SEGUNDA FEIRA A VARIÁVEL VAI FUICAR COM O VALOR 1
	
	$webfile = '/home/smasher/Desktop/trabalhofinal/taxas-euribor-actuais.asp'; #ATRIBUI À VARIÁVEL O NOME DO FICHEIRO QUE VAI SER DESCARREGADO PARA ANÁLISE
		
	if (-f $webfile) #VERFICA SE EXISTE O FICHEIRO JÁ PREVIAMENTE DESCARREGADO
	{
		unlink($webfile); #APAGA O FICHEIRO O QUE CONTEM AS TAXAS DA EURIBOR PARA ESTAR SEMPRE ACTUALIZADO
	}
		
	`wget http://pt.euribor-rates.eu/taxas-euribor-actuais.asp`; #FAZ O DOWNLOAD DA PÁGINA PRETENDIDA PARA TRATAR A INFORMAÇÃO A SACAR
	
	unless (-f $webfile) #VERFICA SE NÃO EXISTE O FICHEIRO 
	{
		die "Ficheiro não descarregado!!!"; #SAI DO SCRIPT CASO O DOWNLOAD DO FICHEIRO NÃO TENHO SIDO COCNCRETIZADO
	}
	
	print "\n\nFicheiro, ",$webfile," foi descarregado com sucesso!!!\n\n\n\n";#MANDA MENSAGEM CASO O FICHEIRO TENHA SIDO DESCARREGADO COM SUCESSO
		
	chomp($today = `date "+%d-%m-%Y"`);  #DATA FORMATADA DE ACORDO COM A DATA DO FICHEIRO DESCARREGADO, RETORNANDO A DATA DE HOJE

	
	if ($monfri == 1) #TESTA SE HOJE É SEGUNDA FEIRA, POIS COMO O SITE AO FIM DE SEMANA NÃO É ACTUALIZADO ELE TEM DE IR BUSCAR A DATA DE 6ª FEIRA PARA O DIA ANTERIOR
	{
		chomp ($yesterday = `grep -A3 $today $webfile |tail -1|tr -s '>' '#'|cut -f2 -d'#'|tr -s '</' '#'|cut -f1 -d'#' `); #VAI BUSCAR A DATA DE 6ª FEIRA E ATRIBUI À VARIÁVEL
		
	}
	else #SE NÃO FOR SEGUNDA FEIRA OS VALORES VOLTAM AO NORMAL
	{
		chomp($yesterday = `date -d yesterday "+%d-%m-%Y"`);  #DATA FORMATADA DE ACORDO COM A DATA DO FICHEIRO DESCARREGADO, RETORNANDO A DATA DE ONTEM DEVIDO AO ARGUMENTO (-d yesterday)
	}
	
	chomp($euribor3today = `grep -A15 '3 meses' $webfile |cut -f1 -d' ' |tail -13 |head -1`);  #COMANDO QUE DEVOLVE A TAXA EURIBOR A 3 MESES DO DIA ACTUAL
	chomp($euribor6today = `grep -A15 '6 meses' $webfile |cut -f1 -d' ' |tail -13 |head -1`);  #COMANDO QUE DEVOLVE A TAXA EURIBOR A 3 MESES DO DIA ANTERIOR
	chomp($euribor12today = `grep -A15 '12 meses' $webfile |cut -f1 -d' ' |tail -13 |head -1`); #COMANDO QUE DEVOLVE A TAXA EURIBOR A 6 MESES DO DIA ACTUAL
	chomp($euribor3yesterday = `grep -A15 '3 meses' $webfile |cut -f1 -d' ' |tail -13 |head -4 |tail -1 `); #COMANDO QUE DEVOLVE A TAXA EURIBOR A 6 MESES DO DIA ANTERIOR
	chomp($euribor6yesterday = `grep -A15 '6 meses' $webfile |cut -f1 -d' ' |tail -13 |head -4 |tail -1 `); #COMANDO QUE DEVOLVE A TAXA EURIBOR A 12 MESES DO DIA ACTUAL
	chomp($euribor12yesterday = `grep -A15 '12 meses' $webfile |cut -f1 -d' ' |tail -13 |head -4 |tail -1 `); #COMANDO QUE DEVOLVE A TAXA EURIBOR A 12 MESES DO DIA ANTERIOR
	chomp ($status3 = ratestatus($euribor3today,$euribor3yesterday)); #CHAMA A FUNÇÃO RATESTATUS E ATRIBUI À VARIÁVEL A VARIAÇÃO DA TAXA EURIBOR A 3 MESES
	chomp ($status6 = ratestatus($euribor6today,$euribor12yesterday));#CHAMA A FUNÇÃO RATESTATUS E ATRIBUI À VARIÁVEL A VARIAÇÃO DA TAXA EURIBOR A 6 MESES
	chomp ($status12 = ratestatus($euribor12today,$euribor12yesterday));#CHAMA A FUNÇÃO RATESTATUS E ATRIBUI À VARIÁVEL A VARIAÇÃO DA TAXA EURIBOR A 3 MESES
	
formatmail($euribor3today,$euribor3yesterday,$euribor6today,$euribor6yesterday,$euribor12today,$euribor12yesterday,$today,$yesterday);#CHAMA A FUNÇÃO FORMATAIL MAIL E ENVIA AS VARIAVEIS NECESSARIAS
}
#============================================== FIM DA FUNÇÃO ==========================================================================================================================================


#============================================ FUNÇÃO CRIA O EMAIL=======================================================================================================================================
sub formatmail()
{
	my $eu3today = $_[0];
	my $eu3yesterday = $_[1];
	my $eu6today = $_[2];
	my $eu6yesterday = $_[3];								#ACEDE ÀS VÁRIAS POSIÇÕES DO ARRAY DE ENTRADA
	my $eu12today = $_[4];
	my $eu12yesterday = $_[5];
	my $today = $_[6];
	my $yesterday = $_[7];
	my $status3 = ratestatus($eu3today,$eu3yesterday);    #DECLARAÇÃO DE VARIÁVEIS ESCLARES
	my $status6 = ratestatus($eu6today,$eu6yesterday);
	my $status12 = ratestatus($eu12today,$eu12yesterday);
	my (@utilizadores,@temp,@message); #DECLARAÇÃO DE ARRAYS
	my $users = "utilizadores.txt"; #ATRIBUIÇÃO DO NOME DO FICHEIRO QUE CONTEM US UTILIZADORES À VARIÁVEL 
	my $utilizadores;
	my ($to,$from,$subject,$message,$name,$mensagem);
	my ($col1, $col2,$temp);

	$col1 = 0;
	$col2 = 1;  #INICIAÇÃO DE VARIÁVEIS

	open(USERS,"$users") || die("erro ao abrir para ficheiro: \n"); #ABRE O FICHEIRO QUE CONTEM OS UTILIZADORES REGISTADOS PARA RECEBEREM O EMAIL COM AS TAXAS DA EURIBOR
	open(EMAIL,'>/home/smasher/Desktop/trabalhofinal/email.txt') || die("erro ao escrever para ficheiro: \n"); #ABRE EM MODO DE ESCRITA O FICHEIRO QUE VAI CONTER O CORPO DA MENSAGEM
	@utilizadores = <USERS>; #ARRAY QUE VAI RECEBER OS UTILIZADORES TODOS REGISTADOS NO FICHEIRO
	close USERS; #FECHA O FICHEIRO DOS UTILIZADORES
	
	$from = "smasher35\@gmail.com"; #ATRIBUI O REMETENTE À VARIÁVEL
	$subject = "<Taxas Euribor - $today>"; #ATRIBUI O ASSUNTO DO EMAIL À VARIÁVEL
	
	$eu3today =~ s/\015//g;			#RETIRA O CARACTER ^M DO FINAL DE CADA VARIÁVEL VISTO QUE O CHOMP NÃO ESTAVA A RESOLVER A SITUAÇÃO
	$eu6today =~ s/\015//g;			#RETIRA O CARACTER ^M DO FINAL DE CADA VARIÁVEL VISTO QUE O CHOMP NÃO ESTAVA A RESOLVER A SITUAÇÃO
	$eu12today =~ s/\015//g;		#RETIRA O CARACTER ^M DO FINAL DE CADA VARIÁVEL VISTO QUE O CHOMP NÃO ESTAVA A RESOLVER A SITUAÇÃO
	$eu3yesterday =~ s/\015//g;   #RETIRA O CARACTER ^M DO FINAL DE CADA VARIÁVEL VISTO QUE O CHOMP NÃO ESTAVA A RESOLVER A SITUAÇÃO
	$eu6yesterday =~ s/\015//g;	#RETIRA O CARACTER ^M DO FINAL DE CADA VARIÁVEL VISTO QUE O CHOMP NÃO ESTAVA A RESOLVER A SITUAÇÃO
	$eu12yesterday =~ s/\015//g;	#RETIRA O CARACTER ^M DO FINAL DE CADA VARIÁVEL VISTO QUE O CHOMP NÃO ESTAVA A RESOLVER A SITUAÇÃO

	print EMAIL "As Taxas da Euribor foram Actualizadas:\n"; #IMPRIME O CORPO DA MENSAGEM PARA O FICHEIRO EMAIL.TXT
	print EMAIL "=======================================\n\n\n\n"; #IMPRIME O CORPO DA MENSAGEM PARA O FICHEIRO EMAIL.TXT
	print EMAIL "==========================================================================\n";
	print EMAIL "Modalidade ............ $today ....... $yesterday ......... Variação \n"; #IMPRIME O CORPO DA MENSAGEM PARA O FICHEIRO EMAIL.TXT
	print EMAIL "__________________________________________________________________________\n\n";	#IMPRIME O CORPO DA MENSAGEM PARA O FICHEIRO EMAIL.TXT
	print EMAIL "Euribor 3 Meses ......... $eu3today .......... $eu3yesterday ............ $status3\n"; #IMPRIME O CORPO DA MENSAGEM PARA O FICHEIRO EMAIL.TXT
	print EMAIL "Euribor 6 Meses ......... $eu6today .......... $eu6yesterday ............ $status6\n"; #IMPRIME O CORPO DA MENSAGEM PARA O FICHEIRO EMAIL.TXT
	print EMAIL "Euribor 12 Meses......... $eu12today .......... $eu12yesterday ............ $status12\n";#IMPRIME O CORPO DA MENSAGEM PARA O FICHEIRO EMAIL.TXT
	print EMAIL "==========================================================================\n\n"; 
	print EMAIL "\n\n"; #IMPRIME O CORPO DA MENSAGEM PARA O FICHEIRO EMAIL.TXT
	print EMAIL "\nCumprimentos\n"; #IMPRIME O CORPO DA MENSAGEM PARA O FICHEIRO EMAIL.TXT
	close EMAIL; #FECHA O FICHEIRO EMAIL.TXT

	print "----> EMAIL A SER ENVIADO <----\n";
	print "===============================\n\n";
	
	undef $/; #A VRIÁVEL ESPECIAL $_ TEM DE FICAR COM O VALOR UNDEF PARA SE PODER COPIAR O CONETÚDO DO FICHEIRO PARA DENTRO DA VARIÁVEL ESCALAR

	open EMAIL, '</home/smasher/Desktop/trabalhofinal/email.txt'; # ABRE O FICHEIRO DE EMAIL EM MODO DE LEITURA
	$mensagem = do {local $/;<EMAIL>}; #COPIA LINHA A LINHA DO FICHEIRO TAL E QUAL ELE FOI ESCRITO PARA DENTRO DA VARIÁVEL

	print "$mensagem\n"; #IMPRIME A VARIÁVEL NO ECRÃ
	
	print "\n\n#Email enviado para os seguintes utilizadores\n";
	print "=================================================\n\n";
	
	foreach $utilizadores(@utilizadores) #ITERAÇÃO DO ARRAY QUE CONTÉM OS UTILIZADORE E QUE VAI DESENCADEAR O ENVIO DO EMAIL PARA CADA UM DELES
	{		
		@temp = split (/;/,$utilizadores); #DIVIDE O NOME DO UTILIZADOR DO SEU ENDEREÇO ATRAVÉS DO COMANDO SPLIT DENTRO DE UM ARRAY TEMPORÁRIO
		print "$temp[$col1] \n"; #VARIÁVEL QUE VAI RECEBER O NOME DO UTILIZADOR ACEDENDO À POSIÇÃO [0] DO ARRAY
		print "$temp[$col2]\n"; #VARIÁVEL QUE VAI RECEBER O EMAIL DO UTILIZADOR ACEDENDO À POSIÇÃO [1] DO ARRAY
		
		#sendEmail( TO Email, FROM email, SUBJECT of email, BODY of email ); 
		sendEmail($temp[$col2],$subject,"Caro(a) Senhor(a) $temp[$col1]\n\n $mensagem"); #CHAMA A FUNÇÃO QUE ENVIA O EMAIL ENVIANDO OS ARGUMENTOS NECESSÁRIOS
	}
	close EMAIL; #FECHA O FICHEIRO EMAIL
}
#============================================== FIM DA FUNÇÃO ============================================================================================================================================


#============================================ FUNÇÃO QUE ENVIA EMAIL=======================================================================================================================================
sub sendEmail()
{
 	my ($to, $subject, $message) = @_; #VARIÁVEIS QUE RECEBEM OS VALORES DO ARRAY DE ENTRADA
 	
		open(MAIL, "|/usr/sbin/ssmtp $to"); #INICIA O PROCESSO
 		print MAIL "Subject: $subject\n\n"; #ADICIONA O ASSUNTO
 		print MAIL "$message\n"; #ADICIONA A MENSAGEM
 		close(MAIL); #FECHA O PROCESSO	
 } 
#============================================== FIM DA FUNÇÃO =============================================================================================================================================
	

#======================== FUNÇÃO RATESTATUS DE ANÁLISE DA VARIAÇÃO DA TAXA EURIBOR ========================================================================================================================
sub ratestatus($$)
{
	my ($today,$yesterday,$ratestatus); #DECLARAÇÃO DE VARIÁVEIS

	$today = $_[0]; #VARIÁVEL QUE RECEBE O PRIMEIRO ARGUMENTO DE ENTRADA
	$yesterday = $_[1]; #VARIÁVEL QUE RECEBE O SEGUNDO ARGUMENTO DE ENTRADA

	if ($today gt $yesterday) #SE A TAXA DE HOJE FOR MAIOR QUE A DE ONTEM
	{
		$ratestatus = "SUBIU"; #ATRIBUI A PALAVRA SUBIU À VARIÁVEL
	}
	elsif ($today lt $yesterday) #SE A TAXA DE HOJE FOR MENOR QUE A DE ONTEM
	{
		$ratestatus = "DESCEU"; #ATRIBUI A PALAVRA DESCEU À VARIÁVEL
	}
	else #SE A TAXA DE HOJE FOR IGUAL QUE A DE ONTEM
	{
		$ratestatus = "MANTEVE"; #ATRIBUI A PALAVRA MANTEVE À VARIÁVEL
	}

	return $ratestatus; #DEVOLVE A VARIAÇÃO QUE TAXA TEVE 
}
#====================================== FIM DA FUNÇÃO =====================================================================================================================================================


#========================================= CÓDIGO PRINCIPAL ===============================================================================================================================================

sub main()
{		

	
	print "\n\n=====================================================================================================\n";
	print "### SCRIPT EURIBOR - TRABALHO FINAL DA DISCIPLINA DE SOSD --> Paulo Penicheiro e Luis Santos <--- ### \n\n\n";

	validateusers(); #CHAMA A FUNÇÃO QUE VAI VERIFICAR SE O FICHEIRO utilizafdores.txt JÁ EXISTE
		
}

main() #INÍCIO DA SCRIPT - CHAMA A FUNÇÃO MAIN


#LINHA A INSERIR NO FICHEIRO /etc/crontab PARA CORRER O SCRIPT TODOS OS DIAS ÚTEIS ÀS 13:00
# 0 13 * * 1-5 smasher /home/smasher/Desktop/trabalhofinal/euribor.pl
