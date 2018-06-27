# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit shinano-common definitions
$(call inherit-product, device/sony/shinano-common/shinano.mk)

# Include non-opensource parts
$(call inherit-product, vendor/sony/z3c/z3c-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/sony/z3c/overlay

# Hardware-specific permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Lineage Hardware
PRODUCT_PACKAGES += \
    vendor.lineage.touch@1.0-service.z3c

# Dalvik/HWUI
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Audio configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/mixer_paths_auxpcm.xml:system/etc/mixer_paths_auxpcm.xml

# NFC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/libnfc-nxp.conf:system/etc/libnfc-nxp.conf

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf

# Thermal manager
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermanager.xml:system/etc/thermanager.xml

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal
