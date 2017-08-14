# Release name
PRODUCT_RELEASE_NAME := tiffany

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/tiffany/device_tiffany.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tiffany
PRODUCT_NAME := cm_tiffany
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := tiffany
PRODUCT_MANUFACTURER := xiaomi

#cofface config
COFFACE_PRODUCT_DEVICE := tiffany
COFFACE_BUILD_PRODUCT := tiffany
COFFACE_PRODUCT_NAME := tiffany
