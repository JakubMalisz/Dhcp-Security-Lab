# jan/02/1970 00:03:55 by RouterOS 7.9.2
# software id = 9AMW-CWTV
#
# model = CRS109-8G-1S-2HnD
# serial number = HD6081PFQ4S
/interface bridge
add name=bridge-switch
/port
set 0 name=serial0
/interface bridge port
add bridge=bridge-switch interface=ether1
add bridge=bridge-switch interface=ether2
add bridge=bridge-switch interface=ether3
/ip neighbor discovery-settings
set discover-interface-list=!dynamic
/system note
set show-at-login=no
