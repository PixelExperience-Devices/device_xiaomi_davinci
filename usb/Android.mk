LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.usb@1.0-service.davinci
LOCAL_MODULE_TAGS  := optional

LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/bin
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_STEM := android.hardware.usb@1.0-service

LOCAL_SRC_FILES := \
    service.cpp \
    Usb.cpp

LOCAL_REQUIRED_MODULES := \
    android.hardware.usb@1.0-service.davinci.rc

LOCAL_SHARED_LIBRARIES := \
    libbase \
    libcutils \
    libhidlbase \
    libhidltransport \
    libhwbinder \
    libutils \
    libhardware \
    android.hardware.usb@1.0

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.usb@1.0-service.davinci.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC

LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/init
LOCAL_MODULE_STEM := android.hardware.usb@1.0-service.rc

LOCAL_SRC_FILES := android.hardware.usb@1.0-service.davinci.rc

include $(BUILD_PREBUILT)
