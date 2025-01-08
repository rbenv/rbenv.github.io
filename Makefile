.PHONY: manpages
manpages: man/rbenv.1.html man/ruby-build.1.html

man/rbenv.1.html: ~/.rbenv/share/man/man1/rbenv.1.adoc
	asciidoctor -b html5 -a linkcss -a stylesheet=manpage.css -a 'webfonts!' -a idprefix= -o $@ $<

man/ruby-build.1.html: ~/.rbenv/plugins/ruby-build/share/man/man1/ruby-build.1.adoc
	asciidoctor -b html5 -a linkcss -a stylesheet=manpage.css -a 'webfonts!' -a idprefix= -o $@ $<

install.sh: ~/.rbenv/rbenv-installer/bin/rbenv-installer
	cp ~/.rbenv/rbenv-installer/bin/rbenv-installer install.sh