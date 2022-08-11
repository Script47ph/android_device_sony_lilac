#
# Copyright (C) 2017 The LineageOS Project
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

### INHERIT FROM YOSHINO-COMMON
include device/sony/yoshino-common/BoardConfigPlatform.mk
include vendor/sony/lilac/BoardConfigVendor.mk

DEVICE_PATH := device/sony/lilac

PRODUCT_PLATFORM := yoshino

# Build Broken Flags
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true
BUILD_BROKEN_PREBUILT_ELF_FILES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
RELAX_USES_LIBRARY_CHECK := true
BUILD_BROKEN_DUP_SYSPROP := true
BUILD_BROKEN_ENFORCE_SYSPROP_OWNER := true
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true

# BOOTLOADER
TARGET_BOOTLOADER_BOARD_NAME := G8441

# KERNEL
TARGET_KERNEL_CONFIG := lineage-msm8998-yoshino-lilac_defconfig
TARGET_KERNEL_CLANG_COMPILE := true
BOARD_KERNEL_CMDLINE += androidboot.hardware=lilac

# PARTITIONS
# See also /proc/partitions on the device
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5242880000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 23753875456
BOARD_VENDORIMAGE_PARTITION_SIZE := 1610612736

# DISPLAY
TARGET_SCREEN_DENSITY := 300

# POWER
TARGET_USE_CUSTOM_POWERHINT := true
TARGET_TAP_TO_WAKE_NODE := "/sys/touchpanel/double_tap"

# VNDK
BOARD_VNDK_VERSION := current

## PROPS
# Add device-specific ones
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Use mke2fs to create ext4 images
TARGET_USES_MKE2FS := true
