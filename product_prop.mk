#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Apex
PRODUCT_PRODUCT_PROPERTIES += \
    ro.apex.updatable=true

# Graphics
PRODUCT_PRODUCT_PROPERTIES += \
    vendor.display.disable_hw_recovery_dump=0

# LMKD
PRODUCT_PRODUCT_PROPERTIES += \
    ro.lmk.low=1001 \
    ro.lmk.medium=0 \
    ro.lmk.critical=0 \
    ro.lmk.critical_upgrade=false \
    ro.lmk.upgrade_pressure=100 \
    ro.lmk.downgrade_pressure=100 \
    ro.lmk.kill_heaviest_task=true \
    ro.lmk.kill_timeout_ms=100 \
    ro.lmk.use_minfree_levels=true

# OEM
PRODUCT_PRODUCT_PROPERTIES += \
    ro.oem_unlock_supported=0
