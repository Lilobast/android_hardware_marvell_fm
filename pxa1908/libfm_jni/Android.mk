ifeq ($(BOARD_USES_MRVL_HARDWARE),true)
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_CFLAGS += -Wno-error  # Pie: legacy Marvell code

LOCAL_SRC_FILES := \
    FmRadioController.cpp \
    LibfmJni.cpp

LOCAL_C_INCLUDES := $(JNI_H_INCLUDE) \
    frameworks/base/include/media

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libdl \
    libmedia \
    libnativehelper \
    libfmhal

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE := libfmjni
LOCAL_HEADER_LIBRARIES += libnativehelper_header_only
include $(BUILD_SHARED_LIBRARY)

endif # MRVL_HARDWARE
