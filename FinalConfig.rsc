# 2026-01-02 01:34:37 by RouterOS 7.20.6
# system id = nBWCI9fWLdG
#
/interface ethernet
set [ find default-name=ether1 ] disable-running-check=no
set [ find default-name=ether2 ] disable-running-check=no
/ip hotspot profile
add hotspot-address=192.168.88.1 name=hsprof1
/ip pool
add name=hs-pool-3 ranges=192.168.88.2-192.168.88.254
/ip hotspot
add address-pool=hs-pool-3 disabled=no interface=ether2 name=hotspot1 \
    profile=hsprof1
/ip address
add address=192.168.88.1/24 comment="hotspot network" interface=ether2 \
    network=192.168.88.0
/ip dhcp-client
add interface=ether1
/ip dns
set servers=8.8.8.8
/ip firewall filter
add action=passthrough chain=unused-hs-chain comment=\
    "place hotspot rules here" disabled=yes
add action=drop chain=forward dst-address=1.1.1.1 dst-port=443 protocol=tcp \
    src-address=0.0.0.0/0
/ip firewall nat
add action=passthrough chain=unused-hs-chain comment=\
    "place hotspot rules here" disabled=yes
add action=masquerade chain=srcnat comment="masquerade hotspot network" \
    src-address=192.168.88.0/24
/ip hotspot user
add name=Umair
/radius
add address=35.227.71.209 service=hotspot
