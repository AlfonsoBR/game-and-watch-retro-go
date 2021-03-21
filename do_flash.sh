export ADAPTER=stlink
export OPENOCD="/opt/openocd-git/bin/openocd"
export PATH=$PATH:/opt/gcc-arm-none-eabi-10-2020-q4-major/bin/
make LARGE_FLASH=1 flash
cd ../game-and-watch-flashloader
/opt/openocd-git/bin/openocd -f interface_stlink.cfg -c "init; mww 0x5C001004 0x00000000; exit"
cd ../game-and-watch-retro-go
