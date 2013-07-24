#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2013 Ultumatumdev
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

# name
PRODUCT_RELEASE_NAME := hercules

# device
$(call inherit-product-if-exists, device/samsung/hercules/full_hercules.mk)

# gsm
$(call inherit-product, vendor/ukg/config/common_gsm.mk)

# languages
PRODUCT_LOCALES := en_US de_DE zh_CN zh_TW cs_CZ nl_BE nl_NL en_AU en_GB en_CA en_NZ en_SG fr_BE fr_CA fr_FR fr_CH de_AT de_LI de_CH it_IT it_CH ja_JP ko_KR pl_PL ru_RU es_ES ar_EG ar_IL bg_BG ca_ES hr_HR da_DK en_IN en_IE en_ZA fi_FI el_GR iw_IL hi_IN hu_HU in_ID lv_LV lt_LT nb_NO pt_BR pt_PT ro_RO sr_RS sk_SK sl_SI es_US sv_SE tl_PH th_TH tr_TR uk_UA vi_VN

# phone
$(call inherit-product, vendor/ukg/config/common_phone.mk)

# products
PRODUCT_DEVICE := hercules
PRODUCT_BRAND := samsung
PRODUCT_NAME := ukg_hercules

PRODUCT_MANUFACTURER := samsung
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=ukg.hercules.$(shell date +%m%d%y).$(shell date +%H%M%S)

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T989 TARGET_DEVICE=SGH-T989 BUILD_FINGERPRINT="samsung/SGH-T989/SGH-T989:4.1.2/JZO54K/T989UVMC6:user/release-keys" PRIVATE_BUILD_DESC="SGH-T989-user 4.1.2 IMM76D UVMC6 release-keys"

# hybrid
PRODUCT_COPY_FILES +=  \
    vendor/ukg/prebuilt/hybrid_hdpi.conf:system/etc/beerbong/properties.conf \
    vendor/ukg/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip
