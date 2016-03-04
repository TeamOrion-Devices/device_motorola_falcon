# Inherit some common Orion stuff.
$(call inherit-product, vendor/orion/config/common_full_phone.mk)

# Inherit device specific
$(call inherit-product, device/motorola/falcon/full_falcon.mk)

PRODUCT_RELEASE_NAME := MOTO G
PRODUCT_NAME := orion_falcon

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += DEVICE_MAINTAINERS="Soham Jambhekar (SohamJ)"
