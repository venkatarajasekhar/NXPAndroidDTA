#
#  Copyright (C) 2015 NXP Semiconductors
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#
#########Build DTA Application and dependent modules#############################
$(info "NXP-NFC-DTA>Build DTA appln and dependent modules..")
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
#include $(call all-subdir-makefiles)
#include $(filter-out $(call my-dir)/Android.mk,$(shell find $(LOCAL_PATH)/ -type f -name Android.mk))
NFCDTA_TOP:= $(LOCAL_PATH)
include $(NFCDTA_TOP)/nfcdta/src/comps/phDTALib/src/comps/phDTAOSAL/src/comps/Android/Android.mk
include $(NFCDTA_TOP)/nfcdta/src/comps/phDTALib/src/comps/phMwIf/src/comps/Android/Android.mk
include $(NFCDTA_TOP)/nfcdta/src/comps/phDTALib/src/comps/phDTATst/src/comps/Android/Android.mk
include $(NFCDTA_TOP)/nfcdta/src/comps/phDTAGUI/src/comps/JNI/Android/Android.mk
include $(NFCDTA_TOP)/nfcdta/src/comps/phDTAGUI/src/comps/Android/Android.mk
