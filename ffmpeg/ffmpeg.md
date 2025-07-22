# FFmpeg
* `FFmpeg` [[www.gyan.dev]](https://www.gyan.dev/ffmpeg/builds/#git-master-builds)
* `3FUI` [[github.com]](https://github.com/Lake1059/FFmpegFreeUI/releases)
    * [[telegram.json]](3fui/telegram.json)
        ```
        ffmpeg -hide_banner -i "输入目录\输入文件.后缀" -c:v hevc_nvenc -preset p7 -profile main -tune hq -s 1280x720 -r 60000/1001 -rc vbr -cq 35 -c:a copy "输出目录\输出文件.后缀" -y
    * [[bilibili.json]](3fui/bilibili.json)
        ```
        ffmpeg -hide_banner -nostdin -i "输入目录\输入文件.后缀" -c:v hevc_nvenc -preset p7 -profile main -tune hq -r 60 -rc vbr -cq 23 -s 3840x2160 -c:a copy "输出目录\输出文件.后缀" -y