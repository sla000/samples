LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= helloworld.c
LOCAL_LDLIBS := -llog -L./libs/arm64-v8a -lhello
# LOCAL_LDLIBS := -llog # for static libhello.a 
#LOCAL_STATIC_LIBRARIES := libhello # for static libhello.a
LOCAL_C_INCLUDES := jni/libhello/ # include headers

LOCAL_MODULE:= helloworld 
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE_TAGS := release 
include $(BUILD_EXECUTABLE)

#include jni/libhello/Android.mk # for static libhello.a
