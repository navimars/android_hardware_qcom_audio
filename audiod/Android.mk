LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	audiod_main.cpp \
	AudioDaemon.cpp \

LOCAL_CFLAGS += -DGL_GLEXT_PROTOTYPES -DEGL_EGLEXT_PROTOTYPES

LOCAL_SHARED_LIBRARIES := \
	libcutils \
	libutils \
	libbinder \
	libmedia

ifeq ($(TARGET_COMPILE_WITH_MSM_KERNEL),true)
	LOCAL_ADDITIONAL_DEPENDENCIES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
endif

LOCAL_MODULE:= audiod

include $(BUILD_EXECUTABLE)
