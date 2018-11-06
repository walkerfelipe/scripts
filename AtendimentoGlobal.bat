IF EXIST "%homepath%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\AtendimentoGlobal.bat" (
	ECHO Arquivo ja existe 
) else (
	copy AtendimentoGlobal.bat "%homepath%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"
)

cd %HoMePath%\Desktop
md atendimentos2
cd atendimentos2
IF EXIST "padrao.txt" (
	echo nada a fazer

) ELSE (


FOR /L %%A IN (1,1,50) DO (
ECHO %%A >> %HoMePath%\Desktop\atendimentos2\padrao.txt
ECHO. >> %HoMePath%\Desktop\atendimentos2\padrao.txt
ECHO. >> %HoMePath%\Desktop\atendimentos2\padrao.txt
ECHO. >> %HoMePath%\Desktop\atendimentos2\padrao.txt
ECHO. >> %HoMePath%\Desktop\atendimentos2\padrao.txt
ECHO. >> %HoMePath%\Desktop\atendimentos2\padrao.txt
::ECHO I-MANAGER: >> %HoMePath%\Desktop\atendimentos2\padrao.txt
::ECHO RECLAMANTE: >> %HoMePath%\Desktop\atendimentos2\padrao.txt
::ECHO QUEIXA: >> %HoMePath%\Desktop\atendimentos2\padrao.txt
::ECHO PROCEDIMENTO: >> %HoMePath%\Desktop\atendimentos2\padrao.txt
::ECHO. >> %HoMePath%\Desktop\atendimentos2\padrao.txt
ECHO ===============================  >> %HoMePath%\Desktop\atendimentos2\padrao.txt
)



)

md %date:~6,4%
cd %date:~6,4%
md 01
md 02
md 03
md 04
md 05
md 06
md 07
md 08
md 09
md 10
md 11
md 12
set mes=%date:~3,2%
cd /d %mes%

IF EXIST "%date:~0,2%-%date:~3,2%-%date:~6,4%.txt" (
	IF EXIST "C:\Program Files\Sublime Text 3\sublime_text.exe" (
		"C:\Program Files\Sublime Text 3\sublime_text.exe" "%date:~0,2%-%date:~3,2%-%date:~6,4%.txt"
	) else (
		"%date:~0,2%-%date:~3,2%-%date:~6,4%.txt"
	)
)  ELSE (
	echo  %date:~0,2%-%date:~3,2%-%date:~6,4%	>>  %date:~0,2%-%date:~3,2%-%date:~6,4%.txt
	type %HoMePath%\Desktop\atendimentos2\padrao.txt >> %date:~0,2%-%date:~3,2%-%date:~6,4%.txt
	)

IF EXIST "C:\Program Files\Sublime Text 3\sublime_text.exe" (
	"C:\Program Files\Sublime Text 3\sublime_text.exe" "%date:~0,2%-%date:~3,2%-%date:~6,4%.txt"
) else (
	"%date:~0,2%-%date:~3,2%-%date:~6,4%.txt"
)

::IF EXIST "%date:~0,2%-%date:~3,2%-%date:~6,4%.txt" (
::	IF EXIST "C:\Program Files\Sublime Text 3\sublime_text.exe"(
::		"C:\Program Files\Sublime Text 3\sublime_text.exe" "%date:~0,2%-%date:~3,2%-%date:~6,4%.txt"
::		)ELSE "%date:~0,2%-%date:~3,2%-%date:~6,4%.txt"
::) ELSE (
::	echo  %date:~0,2%-%date:~3,2%-%date:~6,4%	>>  %date:~0,2%-%date:~3,2%-%date:~6,4%.txt
::	type %HoMePath%\Desktop\atendimentos2\padrao.txt >> %date:~0,2%-%date:~3,2%-%date:~6,4%.txt
::	"C:\Program Files\Sublime Text 3\sublime_text.exe" %date:~0,2%-%date:~3,2%-%date:~6,4%.txt
::)

exit