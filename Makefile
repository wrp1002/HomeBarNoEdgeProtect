INSTALL_TARGET_PROCESSES = SpringBoard

PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)

ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
	ARCHS = arm64 arm64e
	TARGET = iphone:clang:15.5:15.0
else
	ARCHS = armv7 arm64 arm64e
	TARGET = iphone:clang:14.2:8.0
endif

include $(THEOS)/makefiles/common.mk

SDKVERSION = 16.5
TWEAK_NAME = HomeBarNoEdgeProtect

$(TWEAK_NAME)_FILES = Tweak.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc


include $(THEOS_MAKE_PATH)/tweak.mk
