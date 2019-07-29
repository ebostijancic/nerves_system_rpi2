################################################################################
#
# Grafana
#
################################################################################

GRAFANA_VERSION = 6.2.5
GRAFANA_SOURCE = grafana-${GRAFANA_VERSION}.linux-armv7.tar.gz
GRAFANA_SITE = https://dl.grafana.com/oss/release
GRAFANA_SITE_METHOD = wget

GRAFANA_LICENSE = MIT
GRAFANA_STAGING = YES

define GRAFANA_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/local/grafana
	cp -rf $(@D)/* ${TARGET_DIR}/usr/local/grafana/
endef

$(eval $(generic-package))