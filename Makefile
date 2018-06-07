install: main_ui-ru.mo
	install main main_ui /usr/local/bin
	which gdialog >/dev/null 2>&1 || install gdialog /usr/local/bin
	curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
	python get-pip.py
	grep -q "`cat main.services`" /etc/services || cat main.services >> /etc/services
	install main.xinetd /etc/xinetd.d/main
	ln -sf /usr/local/bin/main_ui /usr/local/bin/nmain_ui
	install main_ui-ru.mo /usr/share/locale/ru/LC_MESSAGES/main_ui.mo

main_ui.pot: main_ui
	xgettext -o main_ui.pot -L Shell main_ui

main_ui-ru.mo: main_ui-ru.po
	msgfmt -o main_ui-ru.mo main_ui-ru.po


clone:
	git clone https://github.com/askarserikov/walle.git

download:
	git pull

upload:
	git add -A
	git commit
	git push origin 

tags:
	git push origin --tags
