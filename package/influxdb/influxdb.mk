################################################################################
#
# InfluxDB
#
################################################################################

INFLUXDB_VERSION = 1.7.7
INFLUXDB_SOURCE = influxdb-$(INFLUXDB_VERSION)_linux_armhf.tar.gz
INFLUXDB_SITE =  https://dl.influxdata.com/influxdb/releases
INFLUXDB_LICENSE = MIT
INFLUXDB_STAGING = YES
INFLUXDB_STRIP_COMPONENTS = 2

# URL https://dl.influxdata.com/influxdb/releases/influxdb-1.7.7_linux_armhf.tar.gz

define INFLUXDB_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/usr/bin/influx $(TARGET_DIR)/usr/bin/influx
	$(INSTALL) -D -m 0755 $(@D)/usr/bin/influxd $(TARGET_DIR)/usr/bin/influxd
	$(INSTALL) -D -m 0755 $(@D)/usr/bin/influx_inspect $(TARGET_DIR)/usr/bin/influx_inspect
	$(INSTALL) -D -m 0755 $(@D)/usr/bin/influx_stress $(TARGET_DIR)/usr/bin/influx_stress
	$(INSTALL) -D -m 0755 $(@D)/usr/bin/influx_tsm $(TARGET_DIR)/usr/bin/influx_tsm
endef

$(eval $(generic-package))

