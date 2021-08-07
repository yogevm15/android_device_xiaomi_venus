/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_lahaina.h>

static const variant_info_t venus_info = {
    .hwc_value = "CN",
    .sku_value = "",

    .brand = "Xiaomi",
    .device = "venus",
    .marketname = "Mi11",
    .model = "M2011K2C",
    .build_description = "missi-user 11 RKQ1.200928.002 V12.5.9.0.RKBCNXM release-keys",
    .build_fingerprint = "Xiaomi/venus/venus:11/RKQ1.200928.002/V12.5.9.0.RKBCNXM:user/release-keys",

    .nfc = true,
};


static const std::vector<variant_info_t> variants = {
    venus_info,
};

void vendor_load_properties() {
    search_variant(variants);
    set_dalvik_heap();
}
