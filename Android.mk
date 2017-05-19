#
# Copyright (C) 2017 The Android-x86 Open Source Project
#
# Licensed under the GNU General Public License Version 2 or later.
# You may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.gnu.org/licenses/gpl.html
#

define vboxmod
LOCAL_MODULE := $(1)
EXTRA_KERNEL_MODULE_PATH_$(1) := $(LOCAL_PATH)/$(1)
endef

LOCAL_PATH := $(my-dir)
include $(CLEAR_VARS)

VBOX_KERNEL_MODULES := vboxguest vboxsf vboxvideo

$(foreach v,$(VBOX_KERNEL_MODULES),$(eval $(call vboxmod,$(v))))

TARGET_EXTRA_KERNEL_MODULES += $(VBOX_KERNEL_MODULES)
