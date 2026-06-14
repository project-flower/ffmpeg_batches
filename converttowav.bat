@CD /d %~dp0
ffmpeg -i "%~1" -vn -f wav "%~dp1\%~n1.wav"
@PAUSE
