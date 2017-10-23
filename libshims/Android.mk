# Copyright (C) 2016 The CyanogenMod Project
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := rild_socket.cpp
LOCAL_C_INCLUDES := bionic/libc/include
LOCAL_SHARED_LIBRARIES := libc
LOCAL_MODULE := rild_socket
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := DisplayEventReceiver.cpp
LOCAL_MODULE := libshim_camera
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := ImageDecoder.c
LOCAL_MODULE := libshim_MiCamera
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES :=  \
	MediaBuffer.cpp \
	GraphicBuffer.cpp
LOCAL_SHARED_LIBRARIES          += libui libgui libstagefright_foundation
LOCAL_C_INCLUDES                += framework/native/include frameworks/av/include
LOCAL_CFLAGS                    += -Wno-unused-private-field
LOCAL_MODULE := libshim_ims
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES :=  \
	SurfaceComposerClient.cpp \
	SurfaceControl.cpp

LOCAL_SHARED_LIBRARIES := libbase libgui
LOCAL_MODULE := libshim_qsee
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)