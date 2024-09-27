                        Arquivo Leia-me
                         Deploy.cab do
                      Microsoft Windows XP
                          agosto 2001

As informa��es contidas neste documento, incluindo URL e outras
refer�ncias de site da Internet na Web, est�o sujeitas a altera��es
sem aviso pr�vio e s�o fornecidas apenas para fins informativos. O
usu�rio assume inteiro risco quanto ao uso e aos resultados do uso
deste documento e a Microsoft Corporation n�o oferece qualquer
garantia, expl�cita ou impl�cita.  Salvo indica��o em contr�rio, as
empresas, organiza��es, produtos, pessoas e acontecimentos de
exemplo aqui mencionados s�o fict�cios. Nenhuma associa��o com
qualquer empresa, organiza��o, produto, pessoa ou evento �
intencional nem deve ser inferida. Obedecer �s leis de direitos
autorais � responsabilidade do usu�rio. Sem limitar os direitos
autorais, nenhuma parte deste documento pode ser reproduzida,
armazenada ou introduzida em um sistema de recupera��o, ou
transmitida de qualquer forma por qualquer meio (eletr�nico,
mec�nico, fotoc�pia, grava��o ou qualquer outro), ou para qualquer
prop�sito, sem a permiss�o expressa, por escrito, da Microsoft
Corporation.  

A Microsoft pode ter patentes ou requisi��es para obten��o de patente,
marcas comerciais, direitos autorais ou outros direitos de propriedade
intelectual que abrangem o conte�do deste documento. A posse deste
documento n�o lhe confere nenhum direito sobre as citadas patentes,
marcas comerciais, direitos autorais ou outros direitos de propriedade
intelectual, salvo aqueles expressamente mencionados em um contrato de
licen�a, por escrito, da Microsoft.  

(c) 2001 Microsoft Corporation. Todos os direitos reservados.  

Microsoft, MS-DOS, Windows e Windows NT s�o marcas registradas ou
comerciais da Microsoft Corporation nos Estados Unidos e/ou em outros
pa�ses ou regi�es.  O codinome "Windows 2002 [___] Server" poder� ser
alterado antes da vers�o final destes produtos. As refer�ncias aos
produtos ou fam�lia dos produtos contidas neste documento s�o somente
espa�os reservados para codinomes.
  
Os nomes de empresas e produtos reais aqui mencionados podem ser
marcas comerciais de seus respectivos propriet�rios. 

========================
Como usar este documento
========================
Para exibir o arquivo Leia-me na tela do 'Bloco de notas' do
Microsoft Windows, maximize a janela do 'Bloco de notas'. No menu
'Formatar', clique em 'Quebra autom�tica de linha'.   
Para imprimir o arquivo Leia-me, abra-o no 'Bloco de notas' ou em
outro processador de texto e clique em 'Imprimir' no menu 'Arquivo'. 

========
CONTE�DO
========

1.0 INTRODU��O 
2.0 PROBLEMAS CONHECIDOS 
3.0 CORRE��ES 

----------------
1.0 INTRODU��O
----------------

Este documento fornece informa��es atuais sobre as ferramentas
inclu�das no deploy.cab para o Microsoft Windows XP Home Edition e o
Windows XP Professional.   
OBSERVA��O: A ferramenta 'Gerenciador de instala��o' (Setupmgr.exe)
contida em Deploy.cab destina-se ao uso apenas dos administradores
corporativos. Se voc� for um desenvolvedor de sistema, instale as
ferramentas e a documenta��o contidas no CD do Kit de pr�-instala��o
OEM (OPK). O CD do OPK � encontrado em qualquer pacote do Windows
fornecido por um distribuidor OEM aos fabricantes e montadores
originais de computador e/ou aos pr�-instaladores de software de
hardware de computador com um Contrato de Distribui��o e Pr�-
instala��o Microsoft que � um contrato de licen�a de "quebra de
lacre".  

----------------
2.0 PROBLEMAS CONHECIDOS
----------------
Esta � uma lista de problemas conhecidos para esta vers�o do Windows
 XP.  
No Gerenciador de instala��o, altere o valor (Sele��o de fuso hor�rio)
de "<Usar padr�o>" para o fuso hor�rio do seu cliente. Se voc� deixar
o valor como "<Usar padr�o>", o cliente precisar� alterar manualmente
a configura��o do fuso hor�rio de "(GMT-08:00) Hora do Pac�fico (EUA e
Canad�); Tijuana" para o fuso hor�rio local.   

*  Executando o Sysprep na instala��o do Windows em uma unidade 
diferente de C: (por exemplo, D:\Windows) poder� inutilizar a 
instala��o.  

Solu��o: S� execute o Sysprep em instala��es do Windows localizadas na
unidade C:. 

*  Se Factory.exe n�o estiver na mesma pasta que Sysprep.exe, o comando
sysprep -factory n�o ser� executado.  

Solu��o: Coloque Factory.exe na mesma pasta que Sysprep.exe.  

*  O Sysprep possui uma op��o de linha de comando adicional n�o 
mencionada na documenta��o. Essa op��o � a -bmsd.  

Se o cabe�alho da se��o [SysprepMassStorage] constar no arquivo 
Sysprep.inf e voc� executar o comando Sysprep -bmsd, o Sysprep
preencher� a se��o [SysprepMassStorage] com as entradas <Plug_and_Play
_ID>= <path_to_device_inf_file> correspondentes �s IDs Plug and Play
especificadas nos arquivos Machine.inf, Scsi.inf, Pnpscsi.inf e 
Mshdc.inf. O Sysprep apenas compila a lista dos dispositivos de
armazenamento em massa; ele n�o instala esses dispositivos no banco de 
dados de dispositivos importantes ou conclui qualquer outro 
processamento.   

Voc� pode excluir esses itens de [SysprepMassStorageSection] antes de
executar os comandos Sysprep -reseal ou Sysprep -factory nesta
instala��o.  Instalar um n�mero menor de itens no banco de dados de
dispositivos importantes reduz o tempo necess�rio para que esta imagem
seja reinicializada para o sistema operacional.  

N�o use a op��o de linha de comando -bmsd com quaisquer outras op��es
de linha de comando.  

*  Abrir links expans�veis em qualquer no arquivo Deploy.chm ou Ref.chm
poder� gerar uma mensagem "Erro na DLL". 

Isso s� acontecer� se todas as condi��es a seguir estiverem presentes: 
  -- O sistema operacional � o Windows XP. 
  -- Um depurador comercial, como o Visual Studio Debugger, estiver
     instalado. 
  -- O A op��o 'Desativar depura��o de script' estiver ativada em
     'Op��es da Internet' no Internet Explorer.
  
Solu��o: Desative ou desinstale o depurador de scripts.  
 
*  Pr�-instalar sem usar o Sysprep.inf, faz com que as entradas de 
Unattend.txt sejam reprocessadas ap�s a tela de boas-vindas do  Windows.
As entradas s�o adicionadas ao $winnt$.sif pelo Unattend.txt.

Solu��o (m�todo mais seguro): Remova manualmente todas as entradas do
$winnt$.sif que foram adicionadas pelo Unattend.txt.
  
Solu��o (m�todo mais f�cil):): Exclua completamente $winnt$.sif. 

Ao usar a se��o [OEMRunOnce] do arquivo Winbom.ini para instalar
aplicativos que utilizem instaladores baseados no InstallShield, voc� 
dever� acrescentar � linha de comando uma op��o "-SMS" (sem as aspas). 
"-SMS" dever� ser escrito em letra mai�scula  Essa op��o de linha de 
comando garante que o processo criado pelo instalador completar� a 
opera��o antes do processamento da pr�xima entrada na se��o 
[OEMRunOnce].
  
Os esquemas de classifica��o de drivers s�o diferentes no Windows 2000
e no Windows XP  Ambos utilizam esquemas de classifica��o de drivers 
para determinar qual driver dever� ser carregado quando v�rios estiverem
dispon�veis para um dispositivo. Os drivers s�o classificados tendo como
base se s�o assinados e com qual proximidade correspondem � 
identifica��o do hardware do dispositivo (HW ID). A seguinte lista 
resume os esquemas de classifica��o dos drivers do Windows 2000 e do 
Windows XP em ordem decrescente:   

Esquema de classifica��o dos drivers do Windows 2000:  
1. Driver assinado com correspond�ncia perfeita de quatro partes com 
   identifica��o HW para o driver.  
2. Driver n�o assinado com correspond�ncia perfeita de quatro partes
   com identifica��o HW para o driver. 
3. Driver assinado com correspond�ncia de duas partes com
   identifica��o HW para o driver.  
4. Driver n�o assinado com correspond�ncia de duas partes com
   identifica��o HW com o driver.  

Esquema de classifica��o dos drivers do Windows XP:  
1. Driver assinado com correspond�ncia perfeita de quatro partes com 
   identifica��o HW para o driver.  
2. Driver assinado com correspond�ncia de duas partes com
   identifica��o HW para o driver.  
3. Driver n�o assinado com correspond�ncia perfeita de quatro partes
   com identifica��o HW para o driver (com se��o INF decorada para
   NT)  
4. Driver n�o assinado com correspond�ncia de duas partes com
   identifica��o HW para o driver (com se��o INF decorada para NT) 
5. Driver n�o assinado com correspond�ncia perfeita de quatro partes
   com identifica��o HW para o driver (com se��o INF n�o-decorada
   para NT)  
6. Driver n�o assinado com correspond�ncia de duas partes com
   identifica��o HW para o driver (com se��o INF n�o-decorada)  

*  No Windows XP Home Edition, se voc� executar a tela de boas-vindas 
do Windows at� a finaliza��o e depois executar o comando Sysprep
-reseal, a conta criada na tela de boas-vindas do Windows continuar� 
vis�vel na pr�xima vez que voc� (ou o usu�rio final) executar essa 
tela. Esta conta de propriet�rio n�o pode ser exclu�da pelo Sysprep.
  
Solu��o: Ignore a tela de boas-vindas do Windows durante o processo de 
fabrica��o.  Inclua a entrada OEMAuditBoot na se��o [StartupOptions]
da pasta Oobeinfo.ini, ou pressione CTRL + SHIFT + F3 na primeira
p�gina da tela de boas-vindas do Windows.
  
*  No Windows XP Home Edition, se voc� executar a tela de boas-vindas 
do Windows at� a finaliza��o, executar o comando Sysprep -factory e 
reiniciar o computador no modo de f�brica, o sistema operacional 
parecer� estar travado na p�gina da tela de boas-vindas do Windows. 
 
Solu��o: Ignore a tela de boas-vindas do Windows durante o processo de
fabrica��o.  Voc� pode incluir a entrada OEMAuditBoot na se��o
[StartupOptions] da pasta Oobeinfo.ini, ou pressionar CTRL + SHIFT +
F3 na primeira p�gina da tela de boas-vindas do Windows. Como
alternativa, ao reiniciar o computador no modo de f�brica, pressione
ALT + TAB para retornar o foco � tela de boas-vindas do Windows. Voc�
dever� fazer logon usando a conta que foi criada durante a primeira
execu��o da tela de boas-vindas do Windows.  

O suporte aos endere�os de blocos l�gicos (LBA) de 48 bits est� 
inclu�do no Windows XP para unidades de disco ATAPI, permitindo 
estender a capacidade al�m da barreira de 137 GB. Por padr�o, este 
recurso n�o est� ativado.   

Este recurso ser� ativado na vers�o do Windows 2002 Server e nos
pacotes de servi�o do cliente Windows XP havendo disponibilidade de
BIOSs do PC e de unidades adicionais.  

Para ativar este recurso, acrescente uma entrada � se��o
(Unattended).do Sysprep.inf, da seguinte maneira:
   
	[Unattended]
 	EnableBigLba=Yes  

� poss�vel que um usu�rio final tente ativar as configura��es do
Registro LBA de 48 bits sem ter o BIOS correto que d� suporte a um
disco r�gido com capacidade maior do que 137 gigabytes. Nestes casos,
somente os primeiros 137 gigabytes do disco r�gido s�o endere��veis. O
restante da unidade n�o � usada. Se um usu�rio ativar o Registro LBA
de 48 bits em um sistema que n�o possua um BIOS compat�vel com o LBA
de 48 bits nem uma unidade maior do que 137 gigabytes, n�o haver�
nenhum efeito no sistema.  A unidade continuar� a funcionar como um
disco r�gido padr�o.   

---------------
3.0 CORRE��ES
---------------

Na refer�ncia para pr�-instala��o do Microsoft Windows, as entradas
AdminPW e JoinDomain na se��o (Op��es) do Oobeinfo.ini, n�o est�o
documentadas.  
Corre��o: No livro Oobeinfo.ini, acrescente o seguinte ao t�pico
(Op��es):  

AdminPW
Valor: 0 | 1 
Padr�o: 1  

0 N�o inclua a p�gina da senha do administrador na tela de boas-vindas
  do Windows. 
1 Inclua a p�gina Senha do administrador na tela de
  boas-vindas do Windows.  

JoinDomain
Valor: 0 | 1 
Padr�o: 1  

0 N�o inclua a p�gina Ingressar em um dom�nio na tela de boas-vindas
  do Windows. 
1 Inclua a p�gina Ingressar em um dom�nio na tela de
  boas-vindas do Windows.  

*  Na Refer�ncia de pr�-instala��o do Microsoft Windows, a entrada 
RemoveApplicationPartitionsentry na se��o [DCInstall] do arquivo 
Unattend.txt n�o est� documentada.   

Corre��o: Em Unattend.txt, adicione o seguinte ao t�pico [DCInstall]: 

RemoveApplicationPartitions 
Value: Sim | N�o 
Padr�o: N�o

Sim	Especifica que as parti��es de um aplicativo s�o removidas 
        durante o rebaixamento de um controlador de dom�nio a um 
        servi�o associado.
N�o	N�o remove as parti��es de um aplicativo no controlador do 
        dom�nio. Se o controlador do dom�nio hospedar a �ltima r�plica
        da parti��o de diret�rio de qualquer aplicativo, confirme 
        manualmente que essas parti��es devem ser removidas.

Importante: se voc� remover a �ltima r�plica da parti��o de diret�rio
de qualquer aplicativo, a parti��o e todos os seus dados ser�o
destru�dos.  

 * O t�pico [TerminalServices] na Refer�ncia de pr�-instala��o do 
Windows informa incorretamente que a '�rea de trabalho remota' � 
instalada por padr�o mas n�o � ativada no Windows XP Home Edition 
e que a '�rea de trabalho remota' � ativada por padr�o na fam�lia 
Windows 2002 Server de sistemas operacionais   Corre��o: a '�rea de 
trabalho remota' n�o � instalada no Windows XP Home Edition e � 
desativada por padr�o no Windows XP Professional e na fam�lia Windows 
2002 Server de sistemas operacionais.  

 * A Refer�ncia de pr�-instala��o do Windows informa incorretamente a 
sintaxe da se��o [OEMLink] do arquivo Winbom.ini.  
OEMBrandLinkIconTip e OEMBrandInfoTip N�O s�o entradas v�lidas na se��o 
[OEMLink]. A entrada correta � OEMBrandLinkInfoTip.  

O conjunto completo de entradas em [OEMLink] � o seguinte:
OEMBrandIcon 
OEMBrandLink 
OEMBrandLinkInfoTip 
OEMBrandLinkText  

Veja um exemplo:
 	[OEMLink]
 	OEMBrandIcon=%windir%\System32\OemLinkIcon.ico
 	OEMBrandLink=%windir%\System32\OemLink.htm
 	OEMBrandLinkInfoTip="Clique aqui para obter mais informa��es 
        sobre a Fabrikam."
 	OEMBrandLinkText="Bem-vindo � Fabrikam"  


