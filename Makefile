README.md: vcut Makefile
	sed '1,/__DATA__/d' vcut >README.md
install:
	cp vcut $(DESTDIR)/usr/bin
uninstall:
	rm $(DESTDIR)/usr/bin/vcut
