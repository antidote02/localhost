@echo off 
setlocal 
set "input=%~1"
:: set /p qp=-qp 
set "qp=29"
set "output=%~dp1\%~n1_%qp%.mp4"
:: "fps=60000/1001,scale=1920:-1:flags=lanczos+accurate_rnd"
:: "fps=60000/1001,scale=-1:1080:flags=lanczos+accurate_rnd"
:: "fps=60000/1001"
:: -c:a aac -b:a 320k
:: -c:a copy
ffmpeg -i "%input%" -vf "fps=60000/1001" -c:v hevc_nvenc -preset p7 -profile:v main -rc constqp -qp %qp% -tier main -c:a copy "%output%"
pause