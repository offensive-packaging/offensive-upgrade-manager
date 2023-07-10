all:

clean:

install:
	mkdir -p $(DESTDIR)/usr/bin
	mkdir -p $(DESTDIR)/usr/share/applications
	mkdir -p $(DESTDIR)/usr/share/offensive-upgrade-manager
	chown root:root -R icons full-upgrade.sh offensive-upgrade
	cp full-upgrade.sh $(DESTDIR)/usr/share/offensive-upgrade-manager/
	cp -r icons $(DESTDIR)/usr/share/offensive-upgrade-manager/
	cp offensive-upgrade $(DESTDIR)/usr/bin/
	cp upgrade-manager-offensive.desktop $(DESTDIR)/usr/share/applications/upgrade-manager-offensive.desktop
	chmod 0755 $(DESTDIR)/usr/share/offensive-upgrade-manager/full-upgrade.sh
	chmod 0755 $(DESTDIR)/usr/bin/offensive-upgrade
