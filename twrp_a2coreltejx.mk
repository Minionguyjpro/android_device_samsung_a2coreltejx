#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Another common config inclusion
#$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier
PRODUCT_DEVICE := a2coreltejx
PRODUCT_NAME := twrp_a2coreltejx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A260F
PRODUCT_MANUFACTURER := samsung

# API
PRODUCT_SHIPPING_API_LEVEL := 27

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
#PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
#    BUILD_FINGERPRINT="samsung/a2coreltejx/a2corelte:8.1.0/OPR6/A260FXXSEAUJ1:user/release-keys"
#    PRIVATE_BUILD_DESC="a2coreltejx-user 8.1.0 OPR6 A260FXXSEAUJ1 release-keys"
