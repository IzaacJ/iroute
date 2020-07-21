TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

TOOL_NAME = irouted

irouted_FILES = main.m
irouted_CFLAGS = -fobjc-arc
irouted_CODESIGN_FLAGS = -Sentitlements.plist
irouted_INSTALL_PATH = /usr/bin

include $(THEOS_MAKE_PATH)/tool.mk
