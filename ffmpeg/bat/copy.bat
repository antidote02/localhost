@echo off
ffmpeg -hide_banner -i "%~1" -c copy "%~dpn1.mp4"
pause