@CD /d %~dp0
ffmpeg -i "%~1" -vn -ar 44100 -ab 256k -acodec libmp3lame -f mp3 "%~dp1\%~n1.mp3"
@PAUSE
