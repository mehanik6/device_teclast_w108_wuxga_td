LOCAL_PATH := device/teclast/w108_wuxga_td

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/fstab.mt8163:root/fstab.mt8163 \
    $(LOCAL_PATH)/recovery/init.recovery.mt8163.rc:root/init.recovery.mt8163.rc \
    $(LOCAL_PATH)/recovery/ueventd.mt8163.rc:root/ueventd.mt8163.rc

# For OTA compatibility
PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.locale.region=RU

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/verity.mk)

ifneq (,$(filter eng,$(TARGET_BUILD_VARIANT)))
	PRODUCT_SUPPORTS_BOOT_SIGNER := true
	PRODUCT_VERITY_SIGNING_KEY := build/target/product/security/verity
endif
