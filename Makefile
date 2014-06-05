install:

				install main Gui_worldclock_network /usr/local/bin
				which gdialog >/dev/null 2>&1 || yum -y install gdialog /usr/local/bin
				which xinetd >/dev/null 2>&1 || yum -y install xinetd
				which nc >/dev/null 2>&1 || yum -y install nc
				grep -q "`cat main.services`" /etc/services || cat main.services >> /etc/services
				install main.xinetd /etc/xinetd.d/main
				/etc/init.d/xinetd restart
				
