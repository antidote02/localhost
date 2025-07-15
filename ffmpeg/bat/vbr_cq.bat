@echo off
setlocal
set "input=%~1"
set "cq=29"
set "output=%~dp1\%~n1_%cq%.mp4"
ffmpeg -hide_banner -i "%input%" -c:v hevc_nvenc -preset p7 -profile:v main -s 1280x720 -r 60000/1001 -rc vbr -tune hq -cq %cq% -tier main -c:a copy "%output%"
pause