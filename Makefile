LAUNCHDAEMONS="/System/Library/LaunchDaemons/"
MOBILETOR="/var/mobile/Library/MobileTor/"

all:
	@echo "Run make install."

install:
	install -d -o 0 -g 0 -m 0755 $(DESTDIR)$(LAUNCHDAEMONS)
	install -o 0 -g 0 -m 0644 it.slackware.sid77.tor.plist $(DESTDIR)$(LAUNCHDAEMONS)
	install -o 0 -g 0 -m 0644 it.slackware.sid77.polipo.plist $(DESTDIR)$(LAUNCHDAEMONS)
	install -d -o 501 -g 501 -m 0755 $(DESTDIR)$(MOBILETOR)
	install -o 501 -g 501 -m 0644 torrc $(DESTDIR)$(MOBILETOR)
	install -o 501 -g 501 -m 0644 polipo.conf $(DESTDIR)$(MOBILETOR)
