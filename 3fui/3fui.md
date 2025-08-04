# 3FUI
* `3FUI` [[github.com]](https://github.com/Lake1059/FFmpegFreeUI/releases)
* `命令行`
    ```
    ffmpeg -hide_banner -i input.mp4 -bsf:a:0 aac_adtstoasc -c:v hevc_nvenc -preset p7 -profile:v main -tune hq -rc constqp -b:v 0 -qp 17 -g 30 -bf 0 -pix_fmt yuv420p -vf "setsar=1:1" -sws_flags spline+accurate_rnd+full_chroma_int -b_ref_mode disabled -tag:v hvc1 -rc-lookahead 20 -spatial_aq 1 -aq-strength 15 -fps_mode:v passthrough -c:a copy -movflags frag_keyframe+empty_moov+delay_moov+write_colr output.mp4 -y