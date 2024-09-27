                        Arquivo Leia-me
                         Deploy.cab do
                      Microsoft Windows XP
                          agosto 2001

As informações contidas neste documento, incluindo URL e outras
referências de site da Internet na Web, estão sujeitas a alterações
sem aviso prévio e são fornecidas apenas para fins informativos. O
usuário assume inteiro risco quanto ao uso e aos resultados do uso
deste documento e a Microsoft Corporation não oferece qualquer
garantia, explícita ou implícita.  Salvo indicação em contrário, as
empresas, organizações, produtos, pessoas e acontecimentos de
exemplo aqui mencionados são fictícios. Nenhuma associação com
qualquer empresa, organização, produto, pessoa ou evento é
intencional nem deve ser inferida. Obedecer às leis de direitos
autorais é responsabilidade do usuário. Sem limitar os direitos
autorais, nenhuma parte deste documento pode ser reproduzida,
armazenada ou introduzida em um sistema de recuperação, ou
transmitida de qualquer forma por qualquer meio (eletrônico,
mecânico, fotocópia, gravação ou qualquer outro), ou para qualquer
propósito, sem a permissão expressa, por escrito, da Microsoft
Corporation.  

A Microsoft pode ter patentes ou requisições para obtenção de patente,
marcas comerciais, direitos autorais ou outros direitos de propriedade
intelectual que abrangem o conteúdo deste documento. A posse deste
documento não lhe confere nenhum direito sobre as citadas patentes,
marcas comerciais, direitos autorais ou outros direitos de propriedade
intelectual, salvo aqueles expressamente mencionados em um contrato de
licença, por escrito, da Microsoft.  

(c) 2001 Microsoft Corporation. Todos os direitos reservados.  

Microsoft, MS-DOS, Windows e Windows NT são marcas registradas ou
comerciais da Microsoft Corporation nos Estados Unidos e/ou em outros
países ou regiões.  O codinome "Windows 2002 [___] Server" poderá ser
alterado antes da versão final destes produtos. As referências aos
produtos ou família dos produtos contidas neste documento são somente
espaços reservados para codinomes.
  
Os nomes de empresas e produtos reais aqui mencionados podem ser
marcas comerciais de seus respectivos proprietários. 

========================
Como usar este documento
========================
Para exibir o arquivo Leia-me na tela do 'Bloco de notas' do
Microsoft Windows, maximize a janela do 'Bloco de notas'. No menu
'Formatar', clique em 'Quebra automática de linha'.   
Para imprimir o arquivo Leia-me, abra-o no 'Bloco de notas' ou em
outro processador de texto e clique em 'Imprimir' no menu 'Arquivo'. 

========
CONTEÚDO
========

1.0 INTRODUÇÃO 
2.0 PROBLEMAS CONHECIDOS 
3.0 CORREÇÕES 

----------------
1.0 INTRODUÇÃO
----------------

Este documento fornece informações atuais sobre as ferramentas
incluídas no deploy.cab para o Microsoft Windows XP Home Edition e o
Windows XP Professional.   
OBSERVAÇÃO: A ferramenta 'Gerenciador de instalação' (Setupmgr.exe)
contida em Deploy.cab destina-se ao uso apenas dos administradores
corporativos. Se você for um desenvolvedor de sistema, instale as
ferramentas e a documentação contidas no CD do Kit de pré-instalação
OEM (OPK). O CD do OPK é encontrado em qualquer pacote do Windows
fornecido por um distribuidor OEM aos fabricantes e montadores
originais de computador e/ou aos pré-instaladores de software de
hardware de computador com um Contrato de Distribuição e Pré-
instalação Microsoft que é um contrato de licença de "quebra de
lacre".  

----------------
2.0 PROBLEMAS CONHECIDOS
----------------
Esta é uma lista de problemas conhecidos para esta versão do Windows
 XP.  
No Gerenciador de instalação, altere o valor (Seleção de fuso horário)
de "<Usar padrão>" para o fuso horário do seu cliente. Se você deixar
o valor como "<Usar padrão>", o cliente precisará alterar manualmente
a configuração do fuso horário de "(GMT-08:00) Hora do Pacífico (EUA e
Canadá); Tijuana" para o fuso horário local.   

*  Executando o Sysprep na instalação do Windows em uma unidade 
diferente de C: (por exemplo, D:\Windows) poderá inutilizar a 
instalação.  

Solução: Só execute o Sysprep em instalações do Windows localizadas na
unidade C:. 

*  Se Factory.exe não estiver na mesma pasta que Sysprep.exe, o comando
sysprep -factory não será executado.  

Solução: Coloque Factory.exe na mesma pasta que Sysprep.exe.  

*  O Sysprep possui uma opção de linha de comando adicional não 
mencionada na documentação. Essa opção é a -bmsd.  

Se o cabeçalho da seção [SysprepMassStorage] constar no arquivo 
Sysprep.inf e você executar o comando Sysprep -bmsd, o Sysprep
preencherá a seção [SysprepMassStorage] com as entradas <Plug_and_Play
_ID>= <path_to_device_inf_file> correspondentes às IDs Plug and Play
especificadas nos arquivos Machine.inf, Scsi.inf, Pnpscsi.inf e 
Mshdc.inf. O Sysprep apenas compila a lista dos dispositivos de
armazenamento em massa; ele não instala esses dispositivos no banco de 
dados de dispositivos importantes ou conclui qualquer outro 
processamento.   

Você pode excluir esses itens de [SysprepMassStorageSection] antes de
executar os comandos Sysprep -reseal ou Sysprep -factory nesta
instalação.  Instalar um número menor de itens no banco de dados de
dispositivos importantes reduz o tempo necessário para que esta imagem
seja reinicializada para o sistema operacional.  

Não use a opção de linha de comando -bmsd com quaisquer outras opções
de linha de comando.  

*  Abrir links expansíveis em qualquer no arquivo Deploy.chm ou Ref.chm
poderá gerar uma mensagem "Erro na DLL". 

Isso só acontecerá se todas as condições a seguir estiverem presentes: 
  -- O sistema operacional é o Windows XP. 
  -- Um depurador comercial, como o Visual Studio Debugger, estiver
     instalado. 
  -- O A opção 'Desativar depuração de script' estiver ativada em
     'Opções da Internet' no Internet Explorer.
  
Solução: Desative ou desinstale o depurador de scripts.  
 
*  Pré-instalar sem usar o Sysprep.inf, faz com que as entradas de 
Unattend.txt sejam reprocessadas após a tela de boas-vindas do  Windows.
As entradas são adicionadas ao $winnt$.sif pelo Unattend.txt.

Solução (método mais seguro): Remova manualmente todas as entradas do
$winnt$.sif que foram adicionadas pelo Unattend.txt.
  
Solução (método mais fácil):): Exclua completamente $winnt$.sif. 

Ao usar a seção [OEMRunOnce] do arquivo Winbom.ini para instalar
aplicativos que utilizem instaladores baseados no InstallShield, você 
deverá acrescentar à linha de comando uma opção "-SMS" (sem as aspas). 
"-SMS" deverá ser escrito em letra maiúscula  Essa opção de linha de 
comando garante que o processo criado pelo instalador completará a 
operação antes do processamento da próxima entrada na seção 
[OEMRunOnce].
  
Os esquemas de classificação de drivers são diferentes no Windows 2000
e no Windows XP  Ambos utilizam esquemas de classificação de drivers 
para determinar qual driver deverá ser carregado quando vários estiverem
disponíveis para um dispositivo. Os drivers são classificados tendo como
base se são assinados e com qual proximidade correspondem à 
identificação do hardware do dispositivo (HW ID). A seguinte lista 
resume os esquemas de classificação dos drivers do Windows 2000 e do 
Windows XP em ordem decrescente:   

Esquema de classificação dos drivers do Windows 2000:  
1. Driver assinado com correspondência perfeita de quatro partes com 
   identificação HW para o driver.  
2. Driver não assinado com correspondência perfeita de quatro partes
   com identificação HW para o driver. 
3. Driver assinado com correspondência de duas partes com
   identificação HW para o driver.  
4. Driver não assinado com correspondência de duas partes com
   identificação HW com o driver.  

Esquema de classificação dos drivers do Windows XP:  
1. Driver assinado com correspondência perfeita de quatro partes com 
   identificação HW para o driver.  
2. Driver assinado com correspondência de duas partes com
   identificação HW para o driver.  
3. Driver não assinado com correspondência perfeita de quatro partes
   com identificação HW para o driver (com seção INF decorada para
   NT)  
4. Driver não assinado com correspondência de duas partes com
   identificação HW para o driver (com seção INF decorada para NT) 
5. Driver não assinado com correspondência perfeita de quatro partes
   com identificação HW para o driver (com seção INF não-decorada
   para NT)  
6. Driver não assinado com correspondência de duas partes com
   identificação HW para o driver (com seção INF não-decorada)  

*  No Windows XP Home Edition, se você executar a tela de boas-vindas 
do Windows até a finalização e depois executar o comando Sysprep
-reseal, a conta criada na tela de boas-vindas do Windows continuará 
visível na próxima vez que você (ou o usuário final) executar essa 
tela. Esta conta de proprietário não pode ser excluída pelo Sysprep.
  
Solução: Ignore a tela de boas-vindas do Windows durante o processo de 
fabricação.  Inclua a entrada OEMAuditBoot na seção [StartupOptions]
da pasta Oobeinfo.ini, ou pressione CTRL + SHIFT + F3 na primeira
página da tela de boas-vindas do Windows.
  
*  No Windows XP Home Edition, se você executar a tela de boas-vindas 
do Windows até a finalização, executar o comando Sysprep -factory e 
reiniciar o computador no modo de fábrica, o sistema operacional 
parecerá estar travado na página da tela de boas-vindas do Windows. 
 
Solução: Ignore a tela de boas-vindas do Windows durante o processo de
fabricação.  Você pode incluir a entrada OEMAuditBoot na seção
[StartupOptions] da pasta Oobeinfo.ini, ou pressionar CTRL + SHIFT +
F3 na primeira página da tela de boas-vindas do Windows. Como
alternativa, ao reiniciar o computador no modo de fábrica, pressione
ALT + TAB para retornar o foco à tela de boas-vindas do Windows. Você
deverá fazer logon usando a conta que foi criada durante a primeira
execução da tela de boas-vindas do Windows.  

O suporte aos endereços de blocos lógicos (LBA) de 48 bits está 
incluído no Windows XP para unidades de disco ATAPI, permitindo 
estender a capacidade além da barreira de 137 GB. Por padrão, este 
recurso não está ativado.   

Este recurso será ativado na versão do Windows 2002 Server e nos
pacotes de serviço do cliente Windows XP havendo disponibilidade de
BIOSs do PC e de unidades adicionais.  

Para ativar este recurso, acrescente uma entrada à seção
(Unattended).do Sysprep.inf, da seguinte maneira:
   
	[Unattended]
 	EnableBigLba=Yes  

É possível que um usuário final tente ativar as configurações do
Registro LBA de 48 bits sem ter o BIOS correto que dê suporte a um
disco rígido com capacidade maior do que 137 gigabytes. Nestes casos,
somente os primeiros 137 gigabytes do disco rígido são endereçáveis. O
restante da unidade não é usada. Se um usuário ativar o Registro LBA
de 48 bits em um sistema que não possua um BIOS compatível com o LBA
de 48 bits nem uma unidade maior do que 137 gigabytes, não haverá
nenhum efeito no sistema.  A unidade continuará a funcionar como um
disco rígido padrão.   

---------------
3.0 CORREÇÕES
---------------

Na referência para pré-instalação do Microsoft Windows, as entradas
AdminPW e JoinDomain na seção (Opções) do Oobeinfo.ini, não estão
documentadas.  
Correção: No livro Oobeinfo.ini, acrescente o seguinte ao tópico
(Opções):  

AdminPW
Valor: 0 | 1 
Padrão: 1  

0 Não inclua a página da senha do administrador na tela de boas-vindas
  do Windows. 
1 Inclua a página Senha do administrador na tela de
  boas-vindas do Windows.  

JoinDomain
Valor: 0 | 1 
Padrão: 1  

0 Não inclua a página Ingressar em um domínio na tela de boas-vindas
  do Windows. 
1 Inclua a página Ingressar em um domínio na tela de
  boas-vindas do Windows.  

*  Na Referência de pré-instalação do Microsoft Windows, a entrada 
RemoveApplicationPartitionsentry na seção [DCInstall] do arquivo 
Unattend.txt não está documentada.   

Correção: Em Unattend.txt, adicione o seguinte ao tópico [DCInstall]: 

RemoveApplicationPartitions 
Value: Sim | Não 
Padrão: Não

Sim	Especifica que as partições de um aplicativo são removidas 
        durante o rebaixamento de um controlador de domínio a um 
        serviço associado.
Não	Não remove as partições de um aplicativo no controlador do 
        domínio. Se o controlador do domínio hospedar a última réplica
        da partição de diretório de qualquer aplicativo, confirme 
        manualmente que essas partições devem ser removidas.

Importante: se você remover a última réplica da partição de diretório
de qualquer aplicativo, a partição e todos os seus dados serão
destruídos.  

 * O tópico [TerminalServices] na Referência de pré-instalação do 
Windows informa incorretamente que a 'Área de trabalho remota' é 
instalada por padrão mas não é ativada no Windows XP Home Edition 
e que a 'Área de trabalho remota' é ativada por padrão na família 
Windows 2002 Server de sistemas operacionais   Correção: a 'Área de 
trabalho remota' não é instalada no Windows XP Home Edition e é 
desativada por padrão no Windows XP Professional e na família Windows 
2002 Server de sistemas operacionais.  

 * A Referência de pré-instalação do Windows informa incorretamente a 
sintaxe da seção [OEMLink] do arquivo Winbom.ini.  
OEMBrandLinkIconTip e OEMBrandInfoTip NÃO são entradas válidas na seção 
[OEMLink]. A entrada correta é OEMBrandLinkInfoTip.  

O conjunto completo de entradas em [OEMLink] é o seguinte:
OEMBrandIcon 
OEMBrandLink 
OEMBrandLinkInfoTip 
OEMBrandLinkText  

Veja um exemplo:
 	[OEMLink]
 	OEMBrandIcon=%windir%\System32\OemLinkIcon.ico
 	OEMBrandLink=%windir%\System32\OemLink.htm
 	OEMBrandLinkInfoTip="Clique aqui para obter mais informações 
        sobre a Fabrikam."
 	OEMBrandLinkText="Bem-vindo à Fabrikam"  


