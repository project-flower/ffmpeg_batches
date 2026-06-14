@CD /d %~dp0
ffmpeg -i "%~1" -vn -ar 44100 -ab 256k -acodec aac "%~dp1\%~n1.aac"
@PAUSE
