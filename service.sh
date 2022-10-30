#!/system/bin/sh

MODDIR=${0%/*}

# Late Start To Prevent Conflicts
sleep 69

mkdir -p /storage/emulated/0/NubXD

xtz_log=/storage/emulated/0/NubXD/xtz_main.log
echo "- Xtreme TweakZ Executed Successfully" > $xtz_log
echo "
[*] Device : $(getprop ro.product.model) 
[*] Android Version : $(getprop ro.system.build.version.release)
[*] SOC : $(getprop ro.board.platform)
[*] Kernel : $(uname -r)
[*] SElinux Status : $(su -c getenforce) 
" >> $xtz_log

# Start OneGo Script
xtz.onego

# disable useless services
xtz.dus

# Lets Start Loop
xtz.loop
