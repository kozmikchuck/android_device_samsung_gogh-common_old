# Copyright (C) 2009 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from common msm8960
-include device/samsung/msm8960-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_SOURCE        := kernel/samsung/gogh
BOARD_KERNEL_CMDLINE        := androidboot.hardware=qcom user_debug=31 zcache
BOARD_KERNEL_BASE           := 0x80200000
BOARD_FORCE_RAMDISK_ADDRESS := 0x81500000
BOARD_KERNEL_PAGESIZE       := 2048

TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# Compatibilty with ICS drivers
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB 
BOARD_LEGACY_NL80211_STA_EVENTS := true

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/gogh-common/recovery/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := device/samsung/gogh-common/recovery.fstab

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 28651290624
BOARD_FLASH_BLOCK_SIZE := 131072

# Disable initlogo, Samsungs framebuffer is weird
TARGET_NO_INITLOGO := true

# HAX
#BOARD_USE_SAMSUNG_SEPARATEDSTREAM := true
#BOARD_USES_LIBMEDIA_WITH_AUDIOPARAMETER := true
#TARGET_PROVIDES_LIBAUDIO := true

# Use Audience A2220 chip
BOARD_HAVE_AUDIENCE_A2220 := true

# Graphics
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
BOARD_EGL_CFG := device/samsung/gogh-common/egl.cfg

# Use USB Dock Audio
#BOARD_HAVE_DOCK_USBAUDIO := true

