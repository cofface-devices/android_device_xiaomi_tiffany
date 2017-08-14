$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/xiaomi/tiffany/tiffany-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/xiaomi/tiffany/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/xiaomi/tiffany/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
	
# cwm recovery Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

#Add cofface prop
PRODUCT_PROPERTY_OVERRIDES += \
  ro.weibo.com=weibo.com/cofface

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_tiffany
PRODUCT_DEVICE := tiffany
