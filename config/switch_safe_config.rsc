# jan/02/1970 01:46:08 by RouterOS 7.9
# software id = YR7V-BRK0
#
# model = CRS109-8G-1S-2HnD
# serial number = EFDA0F1FFFF3
/interface bridge
add dhcp-snooping=yes name=bridge-switch
/interface wireless
set [ find default-name=wlan1 ] ssid=MikroTik
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/port
set 0 name=serial0
/interface bridge filter
add action=drop chain=forward dst-port=67 in-interface=ether2 ip-protocol=udp \
    limit=10,10 mac-protocol=ip src-port=68
/interface bridge port
add bridge=bridge-switch interface=ether1 trusted=yes
add bridge=bridge-switch interface=ether2
add bridge=bridge-switch interface=ether3
/ip neighbor discovery-settings
set discover-interface-list=!dynamic
/interface ethernet switch port
set 1 learn-limit=3
/system note
set show-at-login=no
