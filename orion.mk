$(call inherit-product, device/motorola/falcon/orion_falcon.mk)

# Inherit some common Orion stuff.
$(call inherit-product, vendor/orion/config/common_full_phone.mk)

PRODUCT_RELEASE_NAME := MOTO G
PRODUCT_NAME := orion_falcon

PRODUCT_GMS_CLIENTID_BASE := android-motorola
