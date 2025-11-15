# Make `FFmpeg` `FDK-AAC`
* `MSYS2` [[www.msys2.org]](https://www.msys2.org/)
* 编辑`.bashrc`  
``C:\msys64\home\a1729\.bashrc``
    ```
    export http_proxy=http://127.0.0.1:7897
    export https_proxy=http://127.0.0.1:7897
* 以管理员身份运行 `MSYS2 UCRT64`
```
git clone https://github.com/mstorsjo/fdk-aac

cd fdk-aac

pacman -S autoconf automake libtool

./autogen.sh

pacman -S make gcc

./configure

make -j$(nproc)

make install

cd ~

git clone https://github.com/AviSynth/AviSynthPlus

cd avisynthplus

mkdir avisynth-build

cd avisynth-build

pacman -S cmake

cmake ../ -DHEADERS_ONLY:bool=on

make VersionGen install

cd ~

cd ffmpeg
```
* `source code @ github` [[github.com]](https://www.gyan.dev/ffmpeg/builds/#git-master-builds)
    ```
    https://github.com/FFmpeg/FFmpeg/tree/6cdd2cbe323e04cb4bf88bea50c32aad60cba26e
```
git checkout 6cdd2cbe323e04cb4bf88bea50c32aad60cba26e

pacman -S nasm mingw-w64-ucrt-x86_64-cairo mingw-w64-ucrt-x86_64-chromaprint mingw-w64-ucrt-x86_64-frei0r-plugins mingw-w64-ucrt-x86_64-gmp mingw-w64-ucrt-x86_64-gnutls mingw-w64-ucrt-x86_64-ladspa-sdk mingw-w64-ucrt-x86_64-lcms2 mingw-w64-ucrt-x86_64-aom mingw-w64-ucrt-x86_64-openapv

CFLAGS="-I/usr/local/include -D_WIN32" LDFLAGS="-L/ucrt64/lib" CPPFLAGS="-I/ucrt64/include" ./configure --enable-gpl --enable-version3 --enable-static --disable-w32threads --disable-autodetect --enable-cairo --enable-fontconfig --enable-iconv --enable-gnutls --enable-lcms2 --enable-libxml2 --enable-gmp --enable-bzlib --enable-lzma --enable-libsnappy --enable-zlib --enable-librist --enable-libsrt --enable-libssh --enable-libzmq --enable-avisynth --enable-libbluray --enable-libcaca --enable-libdvdnav --enable-libdvdread --enable-sdl2 --enable-libaribb24 --enable-libaribcaption --enable-libdav1d --enable-libdavs2 --enable-libopenjpeg --enable-libquirc --enable-libuavs3d --enable-libxevd --enable-libzvbi --enable-liboapv --enable-libqrencode --enable-librav1e --enable-libsvtav1 --enable-libvvenc --enable-libwebp --enable-libx264 --enable-libx265 --enable-libxavs2 --enable-libxeve --enable-libxvid --enable-libaom --enable-libjxl --enable-libvpx --enable-mediafoundation --enable-libass --enable-frei0r --enable-libfreetype --enable-libfribidi --enable-libharfbuzz --enable-liblensfun --enable-libvidstab --enable-libvmaf --enable-libzimg --enable-amf --enable-cuda-llvm --enable-cuvid --enable-dxva2 --enable-d3d11va --enable-d3d12va --enable-ffnvcodec --enable-libvpl --enable-nvdec --enable-nvenc --enable-vaapi --enable-libshaderc --enable-vulkan --enable-libplacebo --enable-opencl --enable-libcdio --enable-openal --enable-libgme --enable-libmodplug --enable-libopenmpt --enable-libopencore-amrwb --enable-libmp3lame --enable-libshine --enable-libtheora --enable-libtwolame --enable-libvo-amrwbenc --enable-libcodec2 --enable-libilbc --enable-libgsm --enable-liblc3 --enable-libopencore-amrnb --enable-libopus --enable-libspeex --enable-libvorbis --enable-ladspa --enable-libbs2b --enable-libflite --enable-libmysofa --enable-librubberband --enable-libsoxr --enable-chromaprint --enable-whisper --enable-libfdk-aac --enable-nonfree --pkg-config="pkg-config --static"
```
https://github.com/arthenica/ffmpeg-kit
https://central.sonatype.com/artifact/com.antonkarpenko/ffmpeg-kit-full
https://github.com/arthenica/ffmpeg-kit/wiki/Building
https://zhuanlan.zhihu.com/p/707298876
https://blog.csdn.net/csdn_tom_168/article/details/149607322