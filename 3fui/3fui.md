# 3FUI
* `3FUI` [[github.com]](https://github.com/Lake1059/FFmpegFreeUI/releases)
* `自定义参数`
    ```
    -sws_flags spline+accurate_rnd+full_chroma_int

-hide_banner -nostdin -y -nostats -i C:/Users/a1729/Videos/j/2/MIDA-243_2.mp4
    -sws_flags spline+accurate_rnd+full_chroma_int
    -b_ref_mode disabled
    -tag:v hvc1
    -g 30
    -rc-lookahead 20
    -spatial_aq 1
    -aq-strength 15
    -b:v 0
    -bsf:a:0 aac_adtstoasc
    -fps_mode:v passthrough
    -movflags frag_keyframe+empty_moov+delay_moov+use_metadata_tags+write_colr C:/Users/a1729/Videos/j/2/MIDA-243_2_51201687.mp4

ffmpeg -hide_banner -nostdin -i 1.mp4 -bsf:a:0 aac_adtstoasc -c:v hevc_nvenc -preset p7 -profile:v main -tune hq -rc constqp -b:v 0 -qp 17 -bf 0 -pix_fmt yuv420p -vf "setsar=1:1" -sws_flags spline+accurate_rnd+full_chroma_int -b_ref_mode disabled -tag:v hvc1 -g 30 -rc-lookahead 20 -spatial_aq 1 -aq-strength 15 -fps_mode:v passthrough -c:a copy -movflags frag_keyframe+empty_moov+delay_moov+write_colr 3.mp4 -y