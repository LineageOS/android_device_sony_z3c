# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/sony/z3c/full_z3c.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D5803
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/D5803/D5833:6.0.1/23.5.A.1.291/2769308465:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D5803-user 6.0.1 23.5.A.1.291 2769308465 release-keys"

PRODUCT_NAME := cm_z3c
PRODUCT_DEVICE := z3c
