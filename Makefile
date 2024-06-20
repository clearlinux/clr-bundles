all: bundles

bundles:
	echo "Nothing to build"
	

install:
	mkdir -p $(DESTDIR)/usr/share/clr-bundles
	cp packages $(DESTDIR)/usr/share/clr-bundles/
	cp -a bundles/* $(DESTDIR)/usr/share/clr-bundles/
	cp -a mappings $(DESTDIR)/usr/share/clr-bundles/


tag:
	git push
	git tag -f latest
	git push -f --tags