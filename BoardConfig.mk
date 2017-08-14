USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/xiaomi/tiffany/BoardConfigVendor.mk

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

TARGET_BOOTLOADER_BOARD_NAME := tiffany
TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_CMDLINE := ignore_loglevel console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78af000 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048

# init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/xiaomi/tiffany/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

#TWRP
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true

BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
#TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_THEME := portrait_hdpi
#COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
BOARD_NO_SECURE_DISCARD := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_EXFAT_FUSE := true
TW_NO_EXFAT := true
TW_SCREEN_BLANK_ON_BOOT := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_MAX_BRIGHTNESS := 250
TW_USE_TOOLBOX := true

#cofface config
#RECOVERY_VARIANT := twrp
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := zh_CN
BOARD_DISABLE_BOOT_VERIFY := true

#ENCRYPTION
#TARGET_HW_DISK_ENCRYPTION := true
#TW_INCLUDE_CRYPTO := true
#TWRP_INCLUDE_LOGCAT := true
#TARGET_USES_LOGD := true
TARGET_RECOVERY_FSTAB := device/xiaomi/tiffany/recovery.fstab
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset 0x1000000
BOARD_MKBOOTIMG_ARGS += --tags_offset 0x100
TARGET_CPU_SMP := true
