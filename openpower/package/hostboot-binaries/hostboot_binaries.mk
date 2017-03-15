################################################################################
#
# hostboot_binaries
#
################################################################################

###pje 1/06/2017
### update for 820.10 H#O#S#TBOOT_BINARIES_VERSION ?= 56532f5370ea875dfafb10a049b5f3ff6882cc08
# " "  pje 2/22/2017  H#O#S#TBOOT_BINARIES_VERSION ?= 464ab6a961bd062788e73923ff5e10fe4d119d95
# " " pje 03/15/2017 HOSTBOOT_BINARIES_VERSION ?= 446c2ea03d1359a2c4960c4c590b3886a35ccffe

HOSTBOOT_BINARIES_VERSION ?= cff5784b1ecc60536df08aeaaedc45f237228ca5

HOSTBOOT_BINARIES_SITE ?= $(call github,open-power,hostboot-binaries,$(HOSTBOOT_BINARIES_VERSION))
HOSTBOOT_BINARIES_LICENSE = Apache-2.0

HOSTBOOT_BINARIES_INSTALL_IMAGES = YES
HOSTBOOT_BINARIES_INSTALL_TARGET = NO

define HOSTBOOT_BINARIES_INSTALL_IMAGES_CMDS
     $(INSTALL) -D $(@D)/cvpd.bin  $(STAGING_DIR)/hostboot_binaries/cvpd.bin
     $(INSTALL) -D $(@D)/$(BR2_HOSTBOOT_BINARY_WINK_FILENAME) $(STAGING_DIR)/hostboot_binaries/
     $(INSTALL) -D $(@D)/$(BR2_HOSTBOOT_BINARY_SBEC_FILENAME) $(STAGING_DIR)/hostboot_binaries/
     $(INSTALL) -D $(@D)/$(BR2_HOSTBOOT_BINARY_SBE_FILENAME)  $(STAGING_DIR)/hostboot_binaries/
     $(INSTALL) -D $(@D)/$(BR2_IMA_CATALOG_FILENAME)  $(STAGING_DIR)/hostboot_binaries/
endef

$(eval $(generic-package))
