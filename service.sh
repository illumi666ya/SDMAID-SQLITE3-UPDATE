# ILLUMI
# DEMONICA
# www.bento.me/illumi

# SERVICE.SH
# MODDIR
MODDIR=${0%/*}

# DETECT BOOT IF COMPLETE OR NOT FROM KTWEAK (TYTYDRACO) , THANKS
while [[ "$(getprop sys.boot_completed)" -ne 1 ]] && [[ ! -d "/sdcard" ]]
do
       sleep 1
done

# WAIT FOR BOOT TO FINISH COMPLETELY
dbg "Sleeping until boot completes."
while [[ `getprop sys.boot_completed` -ne 1 ]]
do
       sleep 1
done

# WAIT TO THE BOOT BE COMPLETED
sleep_needed_time() {
until [[ $(getprop sys.boot_completed) -eq 1 || $(getprop dev.bootcomplete) -eq 1 ]]; do
sleep 1
done
}

sleep_needed_time

##########################################################################################
# BATAS SUCI :V
##########################################################################################

# SDMAID
cp /data/adb/modules/SDMAID/libsqlite3.so /data/app/*/eu.thedarken.sdm-*==/lib/arm64/

chmod 0755 /data/app/*/eu.thedarken.sdm-*==/lib/arm64/libsqlite3.so
