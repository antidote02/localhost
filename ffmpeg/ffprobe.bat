@echo off
setlocal
set "input=%~1"
ffmpeg -i "%input%"
pause