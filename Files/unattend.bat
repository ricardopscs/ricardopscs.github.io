@rem SetupMgrTag
@echo off

rem
rem Este é um script SAMPLE em lote gerado pelo 'Assistente para gerenciamento da instalação do Windows'.
rem Se este script for movido do local em que foi gerado, pode precisar ser modificado.
rem

set AnswerFile=.\unattend.txt
set SetupFiles=E:\i386

E:\i386\winnt32 /s:%SetupFiles% /unattend:%AnswerFile% /copysource:lang
