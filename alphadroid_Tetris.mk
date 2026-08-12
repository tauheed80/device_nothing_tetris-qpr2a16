#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some common AlphaDroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_PRODUCT_PROPERTIES += \
persist.vendor.power.adpf.enable=true \
ro.vendor.powerhal.adpf.enable=true

TARGET_ENABLE_BLUR := true
WITH_GMS := true
GPU_FREQS_PATH := /sys/devices/platform/13000000.mali/devfreq/available_frequencies
GPU_MIN_FREQ_PATH := /sys/devices/platform/13000000.mali/devfreq/min_freq

$(call inherit-product, device/nothing/Tetris/alpha.mk)
$(call inherit-product, device/nothing/Tetris/device.mk)

PRODUCT_NAME := lineage_Tetris
PRODUCT_DEVICE := Tetris
PRODUCT_BRAND := Nothing
PRODUCT_MANUFACTURER := Nothing
PRODUCT_MODEL := A015

PRODUCT_GMS_CLIENTID_BASE := android-nothing

DEVICE_CODENAME := Tetris

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="Tetris 15 AP3A.240905.015.A2 2506092111 release-keys" \
    BuildFingerprint=Nothing/Tetris/Tetris:15/AP3A.240905.015.A2/2506092111:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)
