#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY:25421840:6c484ad12acf6e5f459be8788a25ba6bf3604a42; then
  applypatch --bonus /system/etc/recovery-resource.dat \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/platform/13540000.dwmmc0/by-name/BOOT:19185680:04802805fd88d7881b30f4c607e3a5bd5d21c914 \
          --target EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY:25421840:6c484ad12acf6e5f459be8788a25ba6bf3604a42 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
