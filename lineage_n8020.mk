# Release name
PRODUCT_RELEASE_NAME := n8020

# Inherit device configuration
$(call inherit-product, device/samsung/n80xx-common/n80xx-common.mk)
$(call inherit-product, device/samsung/smdk4412-common/common.mk)
$(call inherit-product, device/samsung/smdk4412-qcom-common/common.mk)
$(call inherit-product, device/samsung/n8020/n8020.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600

# Inherit some common stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n8020
PRODUCT_NAME := lineage_n8020
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-N8020
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
		PRODUCT_NAME=p4noteltexx \
		TARGET_DEVICE=p4notelte \
		PRIVATE_BUILD_DESC="p4noteltexx-user 4.4.2 KOT49H N8020XXSDQA4 release-keys"

BUILD_FINGERPRINT=samsung/p4noteltexx/p4notelte:4.4.2/KOT49H/N8020XXSDQA4:user/release-keys
