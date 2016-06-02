#
# Copyright (C) 2015 The CyanogenMod Project
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

TARGET_OTA_ASSERT_DEVICE := athene

DEVICE_PATH := device/motorola/athene

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Platform
TARGET_BOARD_PLATFORM := msm8952
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8952
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_CPU_CORTEX_A53 := true

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Option to disable block based ota
BLOCK_BASED_OTA := false

# CMHW
BOARD_USES_CYANOGEN_HARDWARE := true

# Powerhal
TARGET_POWERHAL_VARIANT := qcom

# RIL
TARGET_RIL_VARIANT := caf
PROTOBUF_SUPPORTED := true

# Audio
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
AUDIO_FEATURE_ENABLED_VOICE_CONCURRENCY := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true
AUDIO_FEATURE_ENABLED_SOURCE_TRACKING := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Recovery
TARGET_RECOVERY_FSTAB := device/motorola/athene/rootdir/etc/fstab.qcom

# SELinux
include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Force camera module to be compiled only in 32-bit mode on 64-bit systems
# Once camera module can run in the native mode of the system (either
# 32-bit or 64-bit), the following line should be deleted
BOARD_QTI_CAMERA_32BIT_ONLY := true
TARGET_USE_VENDOR_CAMERA_EXT := true
USE_DEVICE_SPECIFIC_CAMERA := true

# Enable HW based full disk encryption
TARGET_HW_DISK_ENCRYPTION := true

# CNE and DPM
TARGET_LDPRELOAD := libNimsWrap.so

# Enable suspend during charger mode
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true


# Display
BOARD_EGL_CFG := $(DEVICE_PATH)/egl.cfg
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_QCOM_BSP := true

USE_OPENGL_RENDERER := true
HAVE_ADRENO_SOURCE:= false
OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so

# Gps
TARGET_GPS_HAL_PATH := $(DEVICE_PATH)/gps
TARGET_NO_RPC := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Keymaster
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USE_MDTP := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x04000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10737418240
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Dexpreopt
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),user)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif

# Enable peripheral manager
TARGET_PER_MGR_ENABLED := true

#PCI RCS
TARGET_USES_PCI_RCS := false

# Enables CSVT
TARGET_USES_CSVT := true

MALLOC_IMPL := dlmalloc

# Enable sensor multi HAL
USE_SENSOR_MULTI_HAL := true

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
TARGET_PROVIDES_WCNSS_QMI   := true
TARGET_USES_WCNSS_CTRL      := true
TARGET_USES_QCOM_WCNSS_QMI  := true
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X
TARGET_PROVIDES_WCNSS_QMI := true
TARGET_USES_QCOM_WCNSS_QMI := true
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# inherit from the proprietary version
-include vendor/motorola/athene/BoardConfigVendor.mk
