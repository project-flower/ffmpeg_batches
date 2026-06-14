@SETLOCAL
@SET /P "LIST=List?"
@SET /P EXTENSION=Extension?

@CD /d %~dp0

@REM 強制的にファイルパスとして変換してパス要素を抽出する
@FOR /F "delims=" %%F IN ("%LIST%") DO @(
    ffmpeg -f concat -safe 0 -i %LIST% -c copy "%%~dpnF.%EXTENSION%"
)

@PAUSE
