LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

ifneq ($(filter codename,$(TARGET_DEVICE)),cp3622a)

endif

