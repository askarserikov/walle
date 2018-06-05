install:
	install main main_ui /usr/local/bin
	which gdialog >/dev/null 2>&1 || install gdialog /usr/local/bin
	grep -q "`cat main.services`" /etc/services || cat main.services >> /etc/services
	install main.xinetd /etc/xinetd.d/main
	ln -sf /usr/local/bin/main_ui /usr/local/bin/nmain_ui

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
