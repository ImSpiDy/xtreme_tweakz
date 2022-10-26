#!/system/bin/sh

MODDIR=${0%/*}

# Late Start To Prevent Conflicts
sleep 69

# Start OneGo Script
xtz.onego

# disable useless services
xtz.dus

# Lets Start Loop
xtz.loop
