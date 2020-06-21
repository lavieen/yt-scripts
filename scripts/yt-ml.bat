@ECHO OFF
IF "%~1"=="" GOTO HELP
GOTO EXEC

:EXEC
youtube-dl.exe -i --no-check-certificate -o ""%%(playlist)s/%%(playlist_index)s-%%(title)s.%%(ext)s"" -x --audio-format mp3  --embed-thumbnail --add-metadata %*
GOTO END

:HELP
ECHO %~0 ^<YouTube-URL^>
GOTO END

:END