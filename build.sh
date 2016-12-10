#!/bin/bash
#LPP Builder Script for Linux
#By gnmmarechal
#This version of the script is not supported or endorsed by Rinnegatamante
echo "LPP Builder Script for Linux v1.0 by gnmmarechal"

echo -n "Insert homebrew name: "
read title
echo -n "Insert homebrew title ID (4 characters): "
read titleID

./vita-mksfoex -s TITLE_ID=${titleID^^}00001 "${title}" param.sfo
yes | cp -rf param.sfo build/sce_sys/param.sfo
7z a -tzip "${title}.vpk" -r ./build/* ./build/eboot.bin 
