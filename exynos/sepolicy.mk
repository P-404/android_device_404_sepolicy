#
# This policy configuration will be used by all exynos products
# that inherit from 404
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/404/sepolicy/exynos/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/404/sepolicy/exynos/dynamic \
    device/404/sepolicy/exynos/system
else
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/404/sepolicy/exynos/dynamic \
    device/404/sepolicy/exynos/vendor
endif
