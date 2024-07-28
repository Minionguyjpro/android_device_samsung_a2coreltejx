# Release name
PRODUCT_RELEASE_NAME := a2corelte

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a2corelte
PRODUCT_MODEL := SM-A260F
PRODUCT_NAME := omni_a2corelte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/samsung/a2corelte/Image
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

ifeq ($(TARGET_PREBUILT_DTB),)
LOCAL_KERNEL_DTB := device/samsung/a2corelte/dtb.img
else
LOCAL_KERNEL_DTB := $(TARGET_PREBUILT_DTB)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_KERNEL_DTB):dt.img
