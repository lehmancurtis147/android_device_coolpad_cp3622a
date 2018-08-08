LOCAL_PATH := $(call my-dir)

ifneq ($(filter codename,$(TARGET_DEVICE)),cp3622a)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif

