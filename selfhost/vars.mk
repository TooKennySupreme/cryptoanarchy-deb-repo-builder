SELFHOST_VERSION=0.1.3
SELFHOST_BUILD_DIR=$(BUILD_DIR)/selfhost-$(SELFHOST_VERSION)


SELFHOST_SOURCE_DIR=$(SOURCE_DIR)/selfhost
SELFHOST_DEB_VERSION=$(SELFHOST_VERSION)-1
SELFHOST_BIN_VERSION=$(SELFHOST_DEB_VERSION)_$(DEB_ARCH)
SELFHOST_SHARE_VERSION=$(SELFHOST_DEB_VERSION)_all

SELFHOST_BIN_PACKAGES=$(addsuffix _$(SELFHOST_BIN_VERSION),)
SELFHOST_SHARE_PACKAGES=$(addsuffix _$(SELFHOST_SHARE_VERSION), selfhost selfhost-nginx selfhost-clearnet selfhost-clearnet-certbot)
SELFHOST_PACKAGES=$(addprefix $(BUILD_DIR)/, $(addsuffix .deb, $(SELFHOST_BIN_PACKAGES) $(SELFHOST_SHARE_PACKAGES)))
SELFHOST_EXTRA_FILES=$(addprefix $(BUILD_DIR)/,selfhost_$(SELFHOST_BIN_VERSION).buildinfo selfhost_$(SELFHOST_BIN_VERSION).changes selfhost_$(SELFHOST_DEB_VERSION).dsc selfhost_$(SELFHOST_DEB_VERSION).tar.gz)
