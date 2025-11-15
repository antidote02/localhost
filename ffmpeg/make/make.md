# Make `FFmpeg` `FDK-AAC`
* `MSYS2` [[www.msys2.org]](https://www.msys2.org/)
* 编辑`.bashrc`  
    `C:\msys64\home\a1729\.bashrc`
    ```
    export http_proxy=http://127.0.0.1:7897
    export https_proxy=http://127.0.0.1:7897
* 以管理员身份运行 `PowerShell`
```
C:\msys64\msys2_shell.cmd -ucrt64 -defterm -no-start

pacman -Syu

pacman -S git

git clone https://github.com/FFmpeg/FFmpeg

cd ffmpeg
```
* `source code @ github` [[github.com]](https://www.gyan.dev/ffmpeg/builds/#git-master-builds)
    ```
    https://github.com/FFmpeg/FFmpeg/tree/6cdd2cbe323e04cb4bf88bea50c32aad60cba26e

```
git checkout 6cdd2cbe323e04cb4bf88bea50c32aad60cba26e
```
* 新建 [[gccconf]](gccconf)  
    `C:\msys64\home\a1729\ffmpeg\gccconf`
```
pacman -S mingw-w64-ucrt-x86_64-toolchain mingw-w64-ucrt-x86_64-nasm

cd ~

git clone https://github.com/AviSynth/AviSynthPlus

mkdir avisynthplus/avisynth-build

cd avisynthplus/avisynth-build

pacman -S cmake base-devel

cmake ../ -DHEADERS_ONLY:bool=on -DCMAKE_INSTALL_PREFIX=/ucrt64

make VersionGen install

cd ~/ffmpeg

pacman -S mingw-w64-ucrt-x86_64-cairo
```
* 编辑`cairo.pc`  
    `C:\msys64\ucrt64\lib\pkgconfig\cairo.pc`
    ```
    Libs: -L${libdir} -lcairo.a
```
./gccconf
```