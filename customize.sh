# Xtreme TweakZ

# Extract Module Files
unzip -o "$ZIPFILE" module.prop -d $MODPATH >&2
unzip -o "$ZIPFILE" system.prop -d $MODPATH >&2
unzip -o "$ZIPFILE" service.sh -d $MODPATH >&2
unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2

# Set Permission
set_perm_recursive $MODPATH 0 0 0755 0644
