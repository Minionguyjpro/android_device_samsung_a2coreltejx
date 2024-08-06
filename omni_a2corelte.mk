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
