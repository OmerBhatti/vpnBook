#!/bin/bash
option=7
while [ "$option" -ge 7 ] 
do
echo '------------------------------'
echo '        Select Country'
echo '------------------------------'
echo '1. US (United State) server-1'
echo '2. US (United State) server-2'
echo '3. CA (Canada) server-1'
echo '4. CA (Canada) server-2'
echo '5. FR (France) server-1'
echo '6. FR (France) server-2'
echo '------------------------------'
read option

country="none"

if [ "$option" -eq 1 ]
then
    country="US-1";
 
elif [ "$option" -eq 2 ]
then
    country="US-2";
 
elif [ "$option" -eq 3 ]
then
    country="CA-1";

elif [ "$option" -eq 4 ]
then
    country="CA-2";
	 
elif [ "$option" -eq 5 ]
then
    country="FR-1";
 
elif [ "$option" -eq 6 ]
then
    country="FR-2";
else
    echo 'Please enter valid option !';
fi
done

user=vpnbook
pass=64s3hch

Location="cd /root/vpnBook/servers/"
[ -f /root/vpnBook/.vpn.sh ] && rm /root/vpnBook/.vpn.sh
code="sudo openvpn $country.ovpn"
echo 'echo " "'>>/root/vpnBook/.vpn.sh
echo 'echo USER : '$user>>/root/vpnBook/.vpn.sh
echo 'echo PASS : '$pass>>/root/vpnBook/.vpn.sh
echo 'echo Selected Server : '$country>>/root/vpnBook/.vpn.sh
echo 'echo " "'>>/root/vpnBook/.vpn.sh
echo $Location>>/root/vpnBook/.vpn.sh
echo $code>>/root/vpnBook/.vpn.sh

chmod +x .vpn.sh && ./.vpn.sh



