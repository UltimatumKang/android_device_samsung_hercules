# Inherit AOSP device configuration for galaxys2.
$(call inherit-product, device/samsung/hercules/full_hercules.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aosp/config/gsm.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := hercules
PRODUCT_NAME := xylon_hercules
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SGH-T989

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T989 TARGET_DEVICE=SGH-T989 BUILD_FINGERPRINT="samsung/SGH-T989/SGH-T989:4.0.4/IMM76D/UVLI4:user/release-keys" PRIVATE_BUILD_DESC="SGH-T989-user 4.0.4 IMM76D UVLI4 release-keys"

# Copy i9100 specific prebuilt files
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
   vendor/aosp/prebuilt/hybrid_hdpi.conf:system/etc/beerbong/properties.conf \
   vendor/aosp/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip
