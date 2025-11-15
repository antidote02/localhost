# FFmpeg
* `FFmpeg` [[www.gyan.dev]](https://www.gyan.dev/ffmpeg/builds/#git-master-builds)  
`C:\Program Files\ffmpeg`
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

* `make`+`libfdk_aac`
    * `MSYS2` [[www.msys2.org]](https://www.msys2.org/)
        * 编辑`.bashrc`  
        `C:\msys64\home\a1729\.bashrc`
            ```
            export http_proxy=http://127.0.0.1:7897
            export https_proxy=http://127.0.0.1:7897
        * 以管理员身份运行 `MSYS2 MINGW64`

    ```
    pacman -Syu

    pacman -S git autotools mingw-w64-ucrt-x86_64-gcc cmake nasm

    git clone https://github.com/mstorsjo/fdk-aac

    cd fdk-aac

    ./autogen.sh

    ./configure

    make -j$(nproc)

    make install

    cd ..
    
    git clone https://github.com/AviSynth/AviSynthPlus

    cd avisynthplus

    mkdir avisynth-build

    cd avisynth-build

    make VersionGen install
    
    git clone https://git.ffmpeg.org/ffmpeg

    cd ffmpeg
    ```
    * `source code @ github` [[github.com]](https://www.gyan.dev/ffmpeg/builds/#git-master-builds)  
        ```
        https://github.com/FFmpeg/FFmpeg/tree/6cdd2cbe323e04cb4bf88bea50c32aad60cba26e
        ```
    ```
    git checkout 6cdd2cbe323e04cb4bf88bea50c32aad60cba26e

    cp /c/msys64/home/a1729/AviSynthPlus/avs_core/include/avisynth_c.h /usr/local/include/avisynth/

    cp /c/msys64/home/a1729/AviSynthPlus/avisynth-build/version.h /usr/local/include/avisynth/avs/
    
    ./configure --enable-gpl --enable-version3 --enable-static --disable-w32threads --disable-autodetect --enable-cairo --enable-fontconfig --enable-iconv --enable-gnutls --enable-lcms2 --enable-libxml2 --enable-gmp --enable-bzlib --enable-lzma --enable-libsnappy --enable-zlib --enable-librist --enable-libsrt --enable-libssh --enable-libzmq --enable-avisynth --enable-libbluray --enable-libcaca --enable-libdvdnav --enable-libdvdread --enable-sdl2 --enable-libaribb24 --enable-libaribcaption --enable-libdav1d --enable-libdavs2 --enable-libopenjpeg --enable-libquirc --enable-libuavs3d --enable-libxevd --enable-libzvbi --enable-liboapv --enable-libqrencode --enable-librav1e --enable-libsvtav1 --enable-libvvenc --enable-libwebp --enable-libx264 --enable-libx265 --enable-libxavs2 --enable-libxeve --enable-libxvid --enable-libaom --enable-libjxl --enable-libvpx --enable-mediafoundation --enable-libass --enable-frei0r --enable-libfreetype --enable-libfribidi --enable-libharfbuzz --enable-liblensfun --enable-libvidstab --enable-libvmaf --enable-libzimg --enable-amf --enable-cuda-llvm --enable-cuvid --enable-dxva2 --enable-d3d11va --enable-d3d12va --enable-ffnvcodec --enable-libvpl --enable-nvdec --enable-nvenc --enable-vaapi --enable-libshaderc --enable-vulkan --enable-libplacebo --enable-opencl --enable-libcdio --enable-openal --enable-libgme --enable-libmodplug --enable-libopenmpt --enable-libopencore-amrwb --enable-libmp3lame --enable-libshine --enable-libtheora --enable-libtwolame --enable-libvo-amrwbenc --enable-libcodec2 --enable-libilbc --enable-libgsm --enable-liblc3 --enable-libopencore-amrnb --enable-libopus --enable-libspeex --enable-libvorbis --enable-ladspa --enable-libbs2b --enable-libflite --enable-libmysofa --enable-librubberband --enable-libsoxr --enable-chromaprint --enable-whisper --enable-libfdk-aac --enable-nonfree

    make -j$(nproc)