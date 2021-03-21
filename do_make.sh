export ADAPTER=stlink
export OPENOCD="/opt/openocd-git/bin/openocd"
export PATH=$PATH:/opt/gcc-arm-none-eabi-10-2020-q4-major/bin/
make clean
make -j4 LARGE_FLASH=1
