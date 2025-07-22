# FFmpeg
* `FFmpeg` [[www.gyan.dev]](https://www.gyan.dev/ffmpeg/builds/#git-master-builds)
    * `GPL` [[github.com]](https://github.com/Vouk/ffmpeg/releases)
* `3FUI` [[github.com]](https://github.com/Lake1059/FFmpegFreeUI/releases)
    * [[telegram.json]](3fui/telegram.json)
        ```
        ffmpeg -hide_banner -nostdin -i "输入目录\输入文件.后缀" -c:v hevc_nvenc -preset p7 -tune uhq -s 1280x720 -r 60000/1001 -rc vbr_hq -cq 28 -c:a copy  "输出目录\输出文件.后缀" -y
    * [[bilibili.json]](3fui/bilibili.json)
        ```
        ffmpeg -hide_banner -nostdin -i "输入目录\输入文件.后缀" -c:v hevc_nvenc -preset p7 -tune uhq -s 3840x2160 -r 60 -rc vbr_hq -cq 23 -c:a copy "输出目录\输出文件.后缀" -y