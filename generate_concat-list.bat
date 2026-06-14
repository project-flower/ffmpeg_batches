@SETLOCAL ENABLEDELAYEDEXPANSION
@SET DIRECTORY="%~1"

@IF %DIRECTORY%=="" @(
    SET /P "DIRECTORY=Directory?"
)

@IF %DIRECTORY%=="" @(
    EXIT /B
)

@REM 強制的にファイルパスとして変換してパス要素を抽出する
@FOR /F "delims=" %%F IN ("%DIRECTORY%") DO @(
    SET "FILENAME=%%~dpnF\%%~nF.txt"
)

@ECHO DIRECTORY = %DIRECTORY%
@ECHO FILENAME = %FILENAME%
@TYPE NUL > "%FILENAME%"
@ECHO DIRECTORY = %DIRECTORY%

@FOR /R %DIRECTORY% %%F IN (*) DO @(
    ECHO file '%%~nxF'
    ECHO file '%%~nxF'>> "%FILENAME%"
)

@PAUSE
