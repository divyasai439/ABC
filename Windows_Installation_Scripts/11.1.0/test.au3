$TEST=$CmdLine[1]
$FILENAME=""
$PATH=""
$TITLE=""
$EXT_START=0
$FILE_START=0
For $X = StringLen($TEST) To 2 Step -1
   If StringMid($TEST,$X,1) = "." And $EXT_START = 0 Then $EXT_START = $X
   If StringMid($TEST,$X,1) = "\" And $FILE_START = 0 Then $FILE_START = $X
   If $FILE_START > 0 Then
      $FILENAME = StringTrimLeft($TEST,$FILE_START)
      $TITLE = StringLeft($FILENAME, $EXT_START - $FILE_START -1)
      $PATH = StringLeft($TEST,$FILE_START)
      ExitLoop
   EndIf
Next
MsgBox(0,'test',"filename:" & $FILENAME & @CR & "Title:" & $TITLE & @CR & "Path:" & $PATH)