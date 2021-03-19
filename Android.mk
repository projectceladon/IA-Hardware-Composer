#
# Copyright 2016 Intel Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_USE_HWCOMPOSER_VHAL := true

LOCAL_PATH := $(call my-dir)

#####################lib###########################
include $(CLEAR_VARS)

LOCAL_CFLAGS := -g -DLOG_TAG=\"hwc_vhal\" -g -Wno-missing-field-initializers -Wno-unused-parameter
LOCAL_CPPFLAGS := -g -std=c++11 -Wall -Werror -Wno-unused-parameter
LOCAL_LDFLAGS :=  -g

LOCAL_SRC_FILES := \
        do_nothing.cpp\

LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE := vhal_deploy
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)
