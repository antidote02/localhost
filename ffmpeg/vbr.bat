@echo off 
setlocal 
set "input=%~1"
set /p bitrate=-b:v 
set "bitrate=%bitrate%k"
set "output=%~dp1\%~n1_%bitrate%.mp4"
:: "fps=60"
ffmpeg -i "%input%" -vf "fps=59.94" -c:v hevc_nvenc -b:v %bitrate% -bufsize 15M -maxrate 15M -preset p7 -profile:v main -rc vbr -tier main -c:a aac -b:a 128k "%output%"
pause