@SETLOCAL
@SET /P INPUT_VIDEO=Video input?
@SET /P INPUT_AUDIO=Audio input?
@SET /P OUTPUT=Output?
@CALL :MAIN %INPUT_VIDEO% %INPUT_AUDIO% %OUTPUT%
@EXIT /B %ERRORLEVEL%

:MAIN
ffmpeg.exe -i "%~1" -i "%~2" -c:v copy -c:a copy -map 0:v:0 -map 1:a:0 "%~3"
@EXIT /B %ERRORLEVEL%
