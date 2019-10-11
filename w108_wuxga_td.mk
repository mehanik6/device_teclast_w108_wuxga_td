# Inherit device configuration
$(call inherit-product, device/teclast/w108_wuxga_td/device.mk)

PRODUCT_COPY_FILES += \
    device/teclast/w108_wuxga_td/recovery.fstab:recovery/root/recovery.fstab

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := w108_wuxga_td
PRODUCT_NAME := w108_wuxga_td
PRODUCT_BRAND := teclast
PRODUCT_MODEL := A10S(M3H3)
PRODUCT_MANUFACTURER := teclast
