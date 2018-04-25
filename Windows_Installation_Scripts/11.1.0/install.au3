#include <Constants.au3>
$TEST=$CmdLine[1] ; To read the data from commandline
;~ $FILENAME=""  This block of code is to get filename and filepath
;~ $PATH=""
;~ $TITLE=""
;~ $EXT_START=0
;~ $FILE_START=0
;~ For $X = StringLen($TEST) To 2 Step -1
;~    If StringMid($TEST,$X,1) = "." And $EXT_START = 0 Then $EXT_START = $X
;~    If StringMid($TEST,$X,1) = "\" And $FILE_START = 0 Then $FILE_START = $X
;~    If $FILE_START > 0 Then
;~       $FILENAME = StringTrimLeft($TEST,$FILE_START)
;~       $TITLE = StringLeft($FILENAME, $EXT_START - $FILE_START -1)
;~       $PATH = StringLeft($TEST,$FILE_START)
;~       ExitLoop
;~    EndIf
;~ Next
Run($TEST ,"" , @SW_MAXIMIZE)  ; Runs the installer file-- Here 1st argument (Program) means The full path of the program (EXE, BAT, COM, or PIF) to run
Sleep(20)
WinWaitActive("Fiorano 11.1.0 - InstallShield Wizard" , "")  ; Activates the installer install shield window
Send("{SPACE}")
Sleep(20)
Send("{TAB 5}")
Send("{SPACE}")
Sleep(20)
Send("{TAB 3}")
Send("{SPACE}")
Sleep(20)
Send("{TAB 3}")
Send("{SPACE}")
Sleep(20)
Send("{SPACE}")
Sleep(20)
Send("{TAB 2}")
Send("{SPACE}")
Sleep(20)
Send("{TAB 3}")
Send("{SPACE}")
Sleep(20)
Send("{SPACE}")
Sleep(600)
Send("{TAB 3}")
Send("{SPACE}")
Send("{TAB}")
Send("{SPACE}")
Send("{TAB}")
Send("{SPACE}")
Sleep(300)
WinWaitActive("Workspace Selection", "")
Sleep(10)
Send("{TAB 4}")
Send("{SPACE}")
Sleep(10)
Send("{SPACE}")