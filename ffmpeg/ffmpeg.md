# FFmpeg
* `FFmpeg` [[www.gyan.dev]](https://www.gyan.dev/ffmpeg/builds/#git-master-builds)
    * 科学无损
        ```
        ffmpeg -hide_banner -i input.mp4 -bsf:a:0 aac_adtstoasc -c:v hevc_nvenc -preset p7 -profile:v main -tune hq -rc vbr -cq 0 -b:v 0 -g 600 -bf 0 -pix_fmt yuv420p -vf "setsar=1:1" -sws_flags spline+accurate_rnd+full_chroma_int -b_ref_mode disabled -tag:v hvc1 -rc-lookahead 20 -spatial_aq 1 -aq-strength 15 -c:a copy -movflags frag_keyframe+empty_moov+delay_moov+write_colr output.mp4 -y
    * `Fluent M3U8` [[github.com]](https://github.com/zhiyiYo/Fluent-M3U8/releases)  
    `C:\Program Files (x86)\Fluent-M3U8\tools`
    * `GPL` [[github.com]](https://github.com/Vouk/ffmpeg/releases)  
    `C:\Program Files\ffmpeg`
    * `Flowframes` [[kemono.su]](https://kemono.su/patreon/user/19695417)  
    `C:\Users\a1729\AppData\Local\Flowframes\FlowframesData\pkgs\av`
    * `VMAF-GUI` [[github.com]](https://github.com/ThatNerdUKnow/vmaf-gui/releases)
    
    ![alt text](image.png)
    *
* `3FUI` [[github.com]](https://github.com/Lake1059/FFmpegFreeUI/releases)
* `VMAF-GUI` [[github.com]](https://github.com/ThatNerdUKnow/vmaf-gui/releases)