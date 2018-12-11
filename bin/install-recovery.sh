#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:18009368:efdf2d04e223cd9a7bbb60e19fc8708d88b7e46d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:13853972:62e46c60449823bac5462a3c1c1f76dbed7a41f6 EMMC:/dev/block/bootdevice/by-name/recovery efdf2d04e223cd9a7bbb60e19fc8708d88b7e46d 18009368 62e46c60449823bac5462a3c1c1f76dbed7a41f6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
