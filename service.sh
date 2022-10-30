#!/system/bin/sh

MODDIR=${0%/*}

# Detect whether Unlocked into System
while $(dumpsys window policy | grep mIsShowing | awk -F= '{print $2}')
do
sleep 1
done

# Late Start To Prevent Conflicts
sleep 10

su -lp 2000 -c "cmd notification post -S bigtext -t 'Xtreme TweakZ' tag 'has Started Successfully on $(date +"%d-%m-%Y %r" )'"

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
