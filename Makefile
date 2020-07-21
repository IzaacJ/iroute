TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = iRoute

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = iRoute

iRoute_FILES = main.m izaAppDelegate.m izaRootViewController.m
iRoute_FRAMEWORKS = UIKit CoreGraphics
iRoute_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk
SUBPROJECTS += irouted
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "uicache; killall -9 SpringBoard;\
	launchctl unload /Library/LaunchDaemons/me.izaacj.ios.iroute.irouted.plist;\
	launchctl load /Library/LaunchDaemons/me.izaacj.ios.iroute.irouted.plist;\
	launchctl start me.izaacj.ios.iroute.irouted.plist;\
	open me.izaacj.ios.iroute;"