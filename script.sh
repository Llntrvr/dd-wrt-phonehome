#!/bin/sh
> /tmp/phonehome.sh;
sleep 60;
cat << EOF >> /tmp/phonehome.sh
	> /tmp/phonehome_output.txt;
	API="https://example.com/healthcheck/";
	PUBLICIP="`curl -s api.ipify.org`";
	LANMAC="`nvram get lan_hwaddr`";
	WANMAC="`nvram get wan_hwaddr`";
	NAME="`nvram get router_name`";
	WANIP="`nvram get wan_ipaddr`";
	LANIP="`nvram get lan_ipaddr`";
	MAINSSID="`nvram get wl0_ssid`";
	MAINSSIDPSK="`nvram get wl0_wpa_psk`";
	MAINSSIDSECURITYMODE="`nvram get wl0_security_mode`";

	FULLREQUEST="\$API?name=\$NAME&public[ip]=\$PUBLICIP&wan[mac]=\$WANMAC&lan[mac]=\$LANMAC&wan[ip]=\$WANIP&lan[ip]=\$LANIP&ssid[2.4][name]=\$MAINSSID&ssid[2.4][psk]=\$MAINSSIDPSK&ssid[2.4][security]=\$MAINSSIDSECURITYMODE";
	ACTION="\$1";
	echo "Request Url: \$FULLREQUEST&action=\$ACTION" >> /tmp/phonehome_output.txt;
	echo "Response:" >> /tmp/phonehome_output.txt;
	curl -s --insecure "\$FULLREQUEST&action=\$ACTION" >> /tmp/phonehome_output.txt;
	cat /tmp/phonehome_output.txt;
EOF
/bin/sh /tmp/phonehome.sh startup
