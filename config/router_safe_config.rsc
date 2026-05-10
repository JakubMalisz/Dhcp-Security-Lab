# jan/02/1970 01:27:17 by RouterOS 7.9
# software id = XMKL-J659
#
# model = CRS109-8G-1S-2HnD
# serial number = HD6089PZYHX
/interface bridge
add arp=reply-only dhcp-snooping=yes name=bridge1
/interface wireless
set [ find default-name=wlan1 ] ssid=MikroTik
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip pool
add name=dhcp_pool ranges=192.168.10.10-192.168.10.50
/ip dhcp-server
add add-arp=yes address-pool=dhcp_pool interface=bridge1 name=server
/port
set 0 name=serial0
/interface bridge port
add bridge=bridge1 interface=ether1
/ip neighbor discovery-settings
set discover-interface-list=!dynamic
/ip address
add address=192.168.10.1/24 interface=bridge1 network=192.168.10.0
/ip dhcp-server network
add address=192.168.10.0/24 dns-server=8.8.8.8,1.1.1.1 gateway=192.168.10.1
/system note
set show-at-login=no
