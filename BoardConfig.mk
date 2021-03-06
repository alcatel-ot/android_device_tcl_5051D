#
# Copyright (C) 2016 The CyanogenMod Project
#           (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FORCE_32_BIT := true

include device/cyanogen/msm8909-common/BoardConfigCommon.mk

DEVICE_PATH := device/tcl/5051D
VENDOR_PATH := device/tcl/5051D

# Assert
TARGET_OTA_ASSERT_DEVICE := 5051D,POP45

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(VENDOR_PATH)/bluetooth

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_USES_LEGACY_MMAP := true
TARGET_USE_VENDOR_CAMERA_EXT := true
BOARD_GLOBAL_CFLAGS += -DCAMERA_VENDOR_L_COMPAT

# Charger
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_CHARGER_ENABLE_SUSPEND := true

# Flags
BOARD_NO_SECURE_DISCARD := true

# GPS
TARGET_NO_RPC := true
USE_DEVICE_SPECIFIC_GPS := true

# Graphics
TARGET_USE_COMPAT_GRALLOC_ALIGN := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/tcl/5051D
TARGET_KERNEL_CONFIG := lineageos_5051D_defconfig

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000 # (20M)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01900000 # (25M)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1288491008
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1860648960
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Properties
TARGET_SYSTEM_PROP := $(VENDOR_PATH)/system.prop

# Recovery
TARGET_RECOVERY_DEVICE_DIRS += $(VENDOR_PATH)
TARGET_RECOVERY_FSTAB := $(VENDOR_PATH)/recovery/recovery.fstab

# RIL
BOARD_GLOBAL_CFLAGS += -DUSE_RIL_VERSION_11

# SELinux
BOARD_SEPOLICY_DIRS += \
    $(VENDOR_PATH)/sepolicy

# Sensors
USE_SENSOR_MULTI_HAL := true

# Wifi
TARGET_PROVIDES_WCNSS_QMI := true

# inherit from the proprietary version
-include vendor/tcl/5051D/BoardConfigVendor.mk
