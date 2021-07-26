#
# Copyright (C) 2019 The LineageOS Project
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
#

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=16m \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m

# Semc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.semc.version.sw=9C84-PID1 \
    ro.semc.version.cust=1289-4696 \
    ro.semc.version.cust_revision=R5D \
    ro.semc.product.model=D5803 \
    ro.semc.ms_type_id=PM-0810-BV
    ro.vendor.sensors.smd=false

# LCD
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

# USB path
PRODUCT_PROPERTY_OVERRIDES += \
    ro.usb.pid_suffix=1BB
