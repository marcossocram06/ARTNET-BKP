# jul/06/2023 08:04:01 by RouterOS 6.48.6
# software id = URF9-V8EV
#
# model = CCR1036-8G-2S+
# serial number = C6CD0CFD66AF
/interface l2tp-server add name=BTU user=BTU
/interface bridge add name=Bridge_L2L protocol-mode=none
/interface bridge add name=Loopback
/interface bridge add name=TRANSPORTE-VHNET protocol-mode=none
/interface bridge add name=bridge1-PPPoE
/interface ethernet set [ find default-name=ether1 ] arp=proxy-arp speed=100Mbps
/interface ethernet set [ find default-name=ether2 ] speed=100Mbps
/interface ethernet set [ find default-name=ether3 ] name="ether3 - IXC" speed=100Mbps
/interface ethernet set [ find default-name=ether4 ] name="ether4 - (BFT-02)GERENCIA SERVIDOR ANTONIO" speed=100Mbps
/interface ethernet set [ find default-name=ether5 ] name="ether5 - CLIENTES ESCRITORIO" speed=100Mbps
/interface ethernet set [ find default-name=ether6 ] name="ether6 - XENSERVER" speed=100Mbps
/interface ethernet set [ find default-name=ether7 ] speed=100Mbps
/interface ethernet set [ find default-name=ether8 ] speed=100Mbps
/interface ethernet set [ find default-name=sfp-sfpplus1 ] advertise=10M-full,100M-full,1000M-full l2mtu=10000 mtu=9000
/interface ethernet set [ find default-name=sfp-sfpplus2 ] l2mtu=10222 mtu=9000 name="sfp-sfpplus2 - LINK BRASIL"
/interface eoip add local-address=186.219.234.0 mac-address=02:95:30:61:7E:76 mtu=1500 name=eoip-tunnel1 remote-address=10.96.96.2 tunnel-id=23
/interface gre add allow-fast-path=no local-address=186.219.234.0 name="COMUNICACAO-ANHEMBI " remote-address=10.96.96.2
/interface vlan add interface=sfp-sfpplus1 name=VLAN-804-CLIENTE-PGB vlan-id=804
/interface vlan add interface=sfp-sfpplus1 name=VLAN-850-NOVO-OSPF-PGB vlan-id=850
/interface vlan add interface=sfp-sfpplus1 name=VLAN-1002-CCR-ARTNET-BFT-2 vlan-id=1002
/interface vlan add interface=sfp-sfpplus1 name=VLAN-2020-PGB vlan-id=2020
/interface vlan add interface=sfp-sfpplus1 name="VLAN-2100 Wifi social" vlan-id=2100
/interface vlan add interface=sfp-sfpplus1 name=VLAN_2053_IPV6 vlan-id=2053
/interface vlan add interface=sfp-sfpplus1 name=vlan-999 vlan-id=999
/interface vlan add interface=sfp-sfpplus1 name="vlan-3002-transporte vhnet-conc-" vlan-id=3002
/interface vlan add comment=PORTA-8-SW interface=sfp-sfpplus1 name=vlan97 use-service-tag=yes vlan-id=97
/interface vlan add comment=GERENCIA-SW-CRS309 interface=sfp-sfpplus1 name=vlan98 vlan-id=98
/interface vlan add interface=bridge1-PPPoE name=vlan343-BKP vlan-id=343
/interface vlan add comment=Clientes-ALPES interface=sfp-sfpplus1 name=vlan350 vlan-id=350
/interface vlan add interface="ether4 - (BFT-02)GERENCIA SERVIDOR ANTONIO" name=vlan533 vlan-id=533
/interface vlan add interface="sfp-sfpplus2 - LINK BRASIL" name=vlan621 vlan-id=621
/interface vlan add interface="sfp-sfpplus2 - LINK BRASIL" name=vlan627 vlan-id=627
/interface vlan add interface=sfp-sfpplus1 name="vlan810 - LINK PGB 500MB" vlan-id=810
/interface vlan add interface=bridge1-PPPoE name=vlan904-PON4 vlan-id=904
/interface vlan add comment=****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************** interface="ether4 - (BFT-02)GERENCIA SERVIDOR ANTONIO" name=vlan1053-OSPF-BTU-PGB vlan-id=1053
/interface vlan add interface=sfp-sfpplus1 name=vlan2000 vlan-id=2000
/interface vlan add interface=sfp-sfpplus1 name=vlan2001-Camera-Policia-OLT-BFT vlan-id=2001
/interface vlan add interface=sfp-sfpplus1 name=vlan2003-cameras vlan-id=2003
/interface vlan add comment=VLAN-2050-CLIENTE-OLT-ZTE interface=sfp-sfpplus1 name=vlan2050 vlan-id=2050
/interface vlan add interface=sfp-sfpplus1 name="vlan3000-transporte vhnet" vlan-id=3000
/interface vlan add interface=sfp-sfpplus1 name=vlan3001-transporte-vhnet vlan-id=3001
/interface vlan add interface=sfp-sfpplus1 name="vlan3003-transporte vhnet-conc-" vlan-id=3003
/interface vlan add comment=PTP-ANHEMBI interface=sfp-sfpplus1 name=vlan3004 vlan-id=3004
/interface vlan add comment=Gerencia-SW-TORRE-ANHEMBI interface=vlan2050 name=vlan998 vlan-id=998
/interface list add name=WAN
/interface list add name=LAN
/ip ipsec proposal set [ find default=yes ] enc-algorithms=aes-128-cbc
/ip kid-control add fri=0s-1d mon=0s-1d name=system-dummy sat=0s-1d sun=0s-1d thu=0s-1d tue=0s-1d tur-fri=0s-1d tur-mon=0s-1d tur-sat=0s-1d tur-sun=0s-1d tur-thu=0s-1d tur-tue=0s-1d tur-wed=0s-1d wed=0s-1d
/ip pool add comment="Aviso Atraso IXCSoft" name=pool_aviso_atraso ranges=172.20.1.0/24
/ip pool add comment="Bloqueio IXCSoft" name=pool_bloqueio ranges=172.21.1.0/24
/ip pool add comment="Aguardando Assinatura IXCSoft" name=pool_aguardando_assinatura ranges=172.22.1.0/24
/ip pool add name=CGNAT ranges=100.64.0.0/21
/ip pool add name=Pool-PPPoE-Dinamico ranges=10.1.0.2-10.1.6.254
/ip pool add name=Pool-PPPoE-Fixo ranges=10.1.254.0/24
/ip pool add name=dhcp_pool51 ranges=192.168.144.200-192.168.144.220
/ip pool add name=pool2 ranges=20.1.0.0/22
/ip pool add name=POOL_PPPOE ranges=100.65.0.0/31
/ip pool add name=POOL-BFT2 ranges=100.64.14.0/23
/ip pool add name=dhcp_pool25 ranges=10.10.30.2-10.10.30.254
/ip pool add name=VLAN2050 ranges=100.70.14.0/23
/ip pool add name=dhcp_pool27 ranges=192.168.100.2-192.168.100.6
/ip pool add name=dhcp_pool43 ranges=10.20.30.2-10.20.30.254
/ip dhcp-server add address-pool=dhcp_pool25 disabled=no interface=vlan2003-cameras name=dhcp1
/ip dhcp-server add address-pool=dhcp_pool27 disabled=no interface=ether2 name=dhcp2
/ip dhcp-server add address-pool=dhcp_pool43 disabled=no interface=ether1 name=dhcp3
/ipv6 pool add name=TUNEL prefix=fec9::/50 prefix-length=64
/ipv6 pool add name=PD prefix=2804:3bd8:8001::/50 prefix-length=64
/ipv6 pool add name=PD1 prefix=2804:f70:100::/48 prefix-length=64
/ipv6 pool add name=PREFIX-T-WAN prefix=2804:2178:440::/47 prefix-length=64
/ipv6 pool add name=PREFIX-PD prefix=2804:2178:442::/47 prefix-length=60
/ppp profile set *0 dhcpv6-pd-pool=PREFIX-PD dns-server=8.8.8.8,1.1.1.1 local-address=186.219.234.0 remote-address=CGNAT remote-ipv6-prefix-pool=PREFIX-T-WAN
/ppp profile add change-tcp-mss=yes dhcpv6-pd-pool=PREFIX-PD dns-server=8.8.8.8,1.1.1.1 local-address=10.255.255.0 name=PPPoE only-one=yes remote-address=CGNAT remote-ipv6-prefix-pool=PREFIX-T-WAN use-ipv6=default
/ppp profile add change-tcp-mss=yes dhcpv6-pd-pool=PREFIX-PD local-address=192.168.80.1 name=VPN-BTU remote-address=192.168.80.2 remote-ipv6-prefix-pool=PREFIX-T-WAN use-compression=no use-encryption=no use-mpls=no
/ppp profile add dhcpv6-pd-pool=PREFIX-PD dns-server=8.8.8.8 local-address=192.168.80.3 name=VPN-PGB remote-address=192.168.80.4 remote-ipv6-prefix-pool=PREFIX-T-WAN
/ppp profile add change-tcp-mss=yes dns-server=172.31.254.35,8.8.8.8 local-address=172.16.0.1 name=profileEther8 remote-address=172.10.10.1 use-compression=no use-encryption=no use-mpls=no use-upnp=yes
/ppp profile add change-tcp-mss=yes dns-server=172.31.254.35,8.8.8.8 local-address=100.64.0.1 name=profile1-BFT-2 only-one=yes remote-address=POOL-BFT2 use-compression=no use-encryption=no use-mpls=no use-upnp=yes
/ppp profile add change-tcp-mss=yes dhcpv6-pd-pool=PREFIX-PD dns-server=8.8.8.8,208.67.220.220 local-address=100.64.0.1 name=VLAN-2050 only-one=yes remote-address=VLAN2050 remote-ipv6-prefix-pool=PREFIX-T-WAN use-compression=no use-encryption=no use-mpls=no use-upnp=yes
/ppp profile add comment="{{IXCSoft Aviso de Atraso}}" dns-server=8.8.8.8,1.1.1.1 name=pool_aviso_atraso rate-limit="" remote-address=pool_aviso_atraso
/ppp profile add comment="{{IXCSoft Aviso de Bloqueio}}" dns-server=8.8.8.8,1.1.1.1 name=pool_bloqueio rate-limit="" remote-address=pool_bloqueio
/interface l2tp-client add connect-to=200.188.232.206 disabled=no ipsec-secret="!ciC!;cYNF3F7RXE@XWq!KA6mY9Pxo;!" name=VPN_PORTAL password=IZgHqX!q2^CP@! profile=default src-address=207.248.10.128 use-ipsec=yes user=artnet
/routing bgp instance set default as=270608 router-id=186.219.234.0
/routing ospf area add area-id=0.0.0.1 disabled=yes name=PPPoE
/routing ospf instance set [ find default=yes ] distribute-default=always-as-type-1 redistribute-connected=as-type-1 redistribute-static=as-type-1 router-id=10.255.255.0
/snmp community set [ find default=yes ] disabled=yes
/snmp community add addresses=168.228.184.78/32,192.168.50.50/32,207.248.10.131/32 name=ARTNET
/user group set full policy=local,telnet,ssh,ftp,reboot,read,write,policy,test,winbox,password,web,sniff,sensitive,api,romon,dude,tikapp
/dude set enabled=yes
/interface bridge port add bridge=TRANSPORTE-VHNET interface="vlan3000-transporte vhnet"
/interface bridge port add bridge=TRANSPORTE-VHNET interface=vlan3001-transporte-vhnet
/interface bridge port add bridge=TRANSPORTE-VHNET interface="vlan3003-transporte vhnet-conc-"
/interface bridge port add bridge=TRANSPORTE-VHNET interface="vlan-3002-transporte vhnet-conc-"
/interface bridge port add bridge=bridge1-PPPoE disabled=yes interface="ether5 - CLIENTES ESCRITORIO"
/interface bridge port add bridge=bridge1-PPPoE interface="ether5 - CLIENTES ESCRITORIO"
/ip firewall connection tracking set tcp-established-timeout=30m
/ip neighbor discovery-settings set discover-interface-list=!dynamic
/interface l2tp-server server set allow-fast-path=yes enabled=yes ipsec-secret=31853185 max-mru=1500 max-mtu=1500 one-session-per-host=yes use-ipsec=yes
/interface pppoe-server server add authentication=pap default-profile=PPPoE disabled=no interface=vlan2000 keepalive-timeout=30 max-mru=1492 max-mtu=1492 service-name=PPPoE-SERVER-VLAN2000
/interface pppoe-server server add authentication=pap default-profile=PPPoE disabled=no interface=bridge1-PPPoE keepalive-timeout=30 max-mru=1492 max-mtu=1492 service-name=Servidor-Geral
/interface pppoe-server server add authentication=pap default-profile=PPPoE disabled=no interface=vlan904-PON4 keepalive-timeout=30 max-mru=1492 max-mtu=1492 service-name=Servidor-PON4
/interface pppoe-server server add authentication=pap default-profile=PPPoE disabled=no interface=sfp-sfpplus1 keepalive-timeout=30 max-mru=1492 max-mtu=1492 service-name=service3
/interface pppoe-server server add authentication=pap default-profile=PPPoE disabled=no interface="ether3 - IXC" keepalive-timeout=30 max-mru=1492 max-mtu=1492 service-name=service6
/interface pppoe-server server add authentication=pap default-profile=PPPoE disabled=no interface=vlan2003-cameras keepalive-timeout=30 max-mru=1492 max-mtu=1492 service-name=service7
/interface pppoe-server server add authentication=pap default-profile=PPPoE disabled=no interface=vlan2050 keepalive-timeout=30 max-mru=1492 max-mtu=1492 max-sessions=200 one-session-per-host=yes service-name=vlan2050
/interface pppoe-server server add authentication=pap default-profile=PPPoE disabled=no interface=vlan97 keepalive-timeout=30 max-mru=1492 max-mtu=1492 one-session-per-host=yes service-name=VLAN-97-UNTAG-PORTA-8-SW
/interface pppoe-server server add authentication=pap default-profile=PPPoE disabled=no interface=vlan3004 keepalive-timeout=30 max-mru=1492 max-mtu=1492 one-session-per-host=yes service-name="vlan anhembi 3004"
/interface pptp-server server set authentication=pap,chap,mschap1,mschap2 keepalive-timeout=10
/interface sstp-server server set enabled=yes
/ip address add address=172.25.0.206/30 interface=vlan621 network=172.25.0.204
/ip address add address=186.219.234.0 interface=Loopback network=186.219.234.0
/ip address add address=207.248.10.141/30 interface="ether3 - IXC" network=207.248.10.140
/ip address add address=172.16.0.1 comment=Loopback interface=Loopback network=172.16.0.1
/ip address add address=192.168.144.1/24 comment="Faixa Nova Antenas " interface=vlan2000 network=192.168.144.0
/ip address add address=10.10.20.1/24 comment="Camera Policia" interface=vlan2000 network=10.10.20.0
/ip address add address=10.1.254.1/24 interface=vlan2000 network=10.1.254.0
/ip address add address=10.255.255.2 comment=INTERFACE-OSPF interface=Loopback network=10.255.255.2
/ip address add address=172.30.0.1/30 comment=OSPF-PGB interface=VLAN-804-CLIENTE-PGB network=172.30.0.0
/ip address add address=10.255.255.0 interface=Loopback network=10.255.255.0
/ip address add address=192.168.148.1/24 comment=RADIOS disabled=yes interface=vlan97 network=192.168.148.0
/ip address add address=172.30.0.22/30 comment=OSPF-CCR-ARTNET-BFT-02 interface=VLAN-1002-CCR-ARTNET-BFT-2 network=172.30.0.20
/ip address add address=10.10.30.1/24 comment=Cameras-olt interface=vlan2003-cameras network=10.10.30.0
/ip address add address=172.30.10.1/30 interface="VLAN-2100 Wifi social" network=172.30.10.0
/ip address add address=10.99.99.2/30 comment="LINK PGB" interface="vlan810 - LINK PGB 500MB" network=10.99.99.0
/ip address add address=172.30.0.50/30 comment=OSPF-PGB interface=VLAN-850-NOVO-OSPF-PGB network=172.30.0.48
/ip address add address=164.163.193.7 comment="LINK-BRASIL " interface=vlan621 network=164.163.193.6
/ip address add address=207.248.10.130 comment=Loopback-IP-LINK-BRASIL-207.248.10.128/28 interface=Loopback network=207.248.10.130
/ip address add address=207.248.10.131 comment=Loopback-IP-LINK-BRASIL-207.248.10.128/28 interface=Loopback network=207.248.10.131
/ip address add address=207.248.10.128 comment=Loopback-IP-LINK-BRASIL-207.248.10.128/28 interface=Loopback network=207.248.10.128
/ip address add address=207.248.10.129 comment=Loopback-IP-LINK-BRASIL-207.248.10.128/28 interface=Loopback network=207.248.10.129
/ip address add address=177.20.169.5/30 comment="SERVIDOR TV" interface=vlan-999 network=177.20.169.4
/ip address add address=172.31.250.1/30 comment="SERVIDOR TV" interface=vlan-999 network=172.31.250.0
/ip address add address=192.168.100.1/24 disabled=yes interface=ether2 network=192.168.100.0
/ip address add address=192.168.146.1/24 comment="Faixa Nova Antenas " interface=vlan2000 network=192.168.146.0
/ip address add address=172.30.0.54/30 interface=vlan350 network=172.30.0.52
/ip address add address=10.69.0.1/30 interface=vlan98 network=10.69.0.0
/ip address add address=172.31.254.9/30 comment=XenServer interface="ether6 - XENSERVER" network=172.31.254.8
/ip address add address=172.31.254.33/29 comment="Xen Server" interface="ether6 - XENSERVER" network=172.31.254.32
/ip address add address=172.31.254.41/30 comment="Speed Test" interface="ether6 - XENSERVER" network=172.31.254.40
/ip address add address=172.31.254.25/30 comment="ACESSO OLT ZTE" interface="ether5 - CLIENTES ESCRITORIO" network=172.31.254.24
/ip address add address=192.168.100.1/24 disabled=yes interface=ether2 network=192.168.100.0
/ip address add address=172.31.254.45/30 comment="Speed Test" interface="ether6 - XENSERVER" network=172.31.254.44
/ip address add address=10.12.0.1/30 interface=vlan533 network=10.12.0.0
/ip address add address=10.69.0.5/30 disabled=yes network=10.69.0.4
/ip address add address=192.168.200.1/30 comment="comunica\E7\E3o anhembi" interface=eoip-tunnel1 network=192.168.200.0
/ip address add address=10.254.254.21/30 comment=OSPF-PGB-BFT interface=vlan1053-OSPF-BTU-PGB network=10.254.254.20
/ip address add address=172.31.254.25/30 comment="ACESSO OLT ZTE" interface=bridge1-PPPoE network=172.31.254.24
/ip address add address=172.31.249.1/30 comment="GERENCIA SERVIDOR ANTONIO" interface="ether4 - (BFT-02)GERENCIA SERVIDOR ANTONIO" network=172.31.249.0
/ip address add address=192.168.138.1/24 interface="ether5 - CLIENTES ESCRITORIO" network=192.168.138.0
/ip address add address=172.30.30.1/30 interface=eoip-tunnel1 network=172.30.30.0
/ip address add address=192.168.200.1/30 comment="comunica\E7\E3o anhembi" disabled=yes interface=eoip-tunnel1 network=192.168.200.0
/ip address add address=172.30.30.5/30 interface=eoip-tunnel1 network=172.30.30.4
/ip address add address=192.168.100.1/24 disabled=yes interface=ether2 network=192.168.100.0
/ip address add address=192.168.105.253/24 interface=TRANSPORTE-VHNET network=192.168.105.0
/ip address add address=172.20.3.1/24 disabled=yes interface=vlan3004 network=172.20.3.0
/ip address add address=192.168.160.1/24 disabled=yes interface=vlan3004 network=192.168.160.0
/ip address add address=172.30.1.1/24 disabled=yes interface=vlan3004 network=172.30.1.0
/ip address add address=10.69.0.9/29 comment=PTP-MIMOSA-ANHEMBI---VLAN3004 interface=vlan2050 network=10.69.0.8
/ip address add address=172.30.31.89 interface=vlan627 network=172.30.31.88
/ip address add address=10.69.0.21/30 disabled=yes interface=vlan2050 network=10.69.0.20
/ip address add address=10.69.0.25/29 interface=vlan2050 network=10.69.0.24
/ip address add address=10.69.0.33/30 comment=SW-TORRE-ANHEMBI interface=vlan998 network=10.69.0.32
/ip cloud set ddns-enabled=yes
/ip dhcp-server network add address=10.10.30.0/24 gateway=10.10.30.1
/ip dhcp-server network add address=10.20.30.0/24 gateway=10.20.30.1
/ip dhcp-server network add address=192.168.100.0/29 gateway=192.168.100.1
/ip dns set servers=172.31.254.35,8.8.8.8,2001:4860:4860::8844,2001:4860:4860::8888
/ip firewall address-list add address=207.248.10.142 comment="IXCProvedor endereco IP do sistema" list=rede_local
/ip firewall address-list add address=10.0.0.0/8 list=Rede.Local
/ip firewall address-list add address=172.16.0.0/12 list=Rede.Local
/ip firewall address-list add address=192.168.0.0/16 list=Rede.Local
/ip firewall address-list add address=10.1.254.0 comment=escritorio list=Corporativo
/ip firewall address-list add address=10.1.0.19 comment=fabio list=Corporativo
/ip firewall address-list add address=10.1.254.5 comment=Farmacia list=Corporativo
/ip firewall address-list add address=10.1.0.0/16 list=NAT-CLIENTES
/ip firewall address-list add address=10.1.254.0/25 list=NAT-CLIENTES
/ip firewall address-list add address=189.57.120.81 list=Bloco-IP-Valido
/ip firewall address-list add address=189.57.120.82 list=Bloco-IP-Valido
/ip firewall address-list add address=189.57.120.83 list=Bloco-IP-Valido
/ip firewall address-list add address=189.57.120.84 list=Bloco-IP-Valido
/ip firewall address-list add address=189.57.120.85 list=Bloco-IP-Valido
/ip firewall address-list add address=189.57.120.86 list=Bloco-IP-Valido
/ip firewall address-list add address=200.187.95.249 comment=Faster list=Bloco-IP-Valido
/ip firewall address-list add address=783e085d7ed4.sn.mynetname.net list=Bloco-IP-Valido
/ip firewall address-list add address=189.57.120.85 list=REDE-IXC
/ip firewall address-list add address=189.57.120.86 list=REDE-IXC
/ip firewall address-list add address=10.2.254.0/24 list=NAT-CLIENTES2
/ip firewall address-list add address=10.1.254.128/25 list=NAT-CLIENTES2
/ip firewall address-list add address=177.20.169.0/28 list=Rede.Local
/ip firewall address-list add address=200.130.5.0/24 comment="SITES GOVERNO" disabled=yes list=Rede.Local
/ip firewall address-list add address=100.64.0.0/10 list=Rede.Local
/ip firewall address-list add address=www.bb.com.br list=https://www.bb.com.br/
/ip firewall address-list add address=45.173.144.186 list=Rede.Local
/ip firewall address-list add address=168.228.184.0/22 list=Permitidos
/ip firewall address-list add address=177.67.207.164 comment=Bruno list=Permitidos
/ip firewall address-list add address=177.70.247.35 list=Permitidos
/ip firewall address-list add address=45.173.145.197 list=Permitidos
/ip firewall address-list add address=192.140.64.0/22 comment=Bloco-Cliente list=Permitidos
/ip firewall address-list add address=170.238.52.0/22 list=Permitidos
/ip firewall address-list add address=200.130.5.0/24 comment="SITES GOVERNO" disabled=yes list=Rede.Local
/ip firewall address-list add address=138.99.52.128 list=Permitidos
/ip firewall address-list add address=179.127.248.0/21 comment=Paulo list=Permitidos
/ip firewall address-list add address=177.70.247.0/24 comment=Gabriel_Praianet list=Permitidos
/ip firewall address-list add address=187.111.141.0/24 comment=Lucas list=Permitidos
/ip firewall address-list add address=186.208.216.0/21 comment=Vitor_Celso list=Permitidos
/ip firewall address-list add address=10.0.0.0/8 comment=REDE-INTERNA list=Permitidos
/ip firewall address-list add address=100.64.0.0/10 comment=REDE-INTERNA list=Permitidos
/ip firewall address-list add address=172.16.0.0/12 comment=REDE-INTERNA list=Permitidos
/ip firewall address-list add address=186.219.234.0/24 list=Permitidos
/ip firewall address-list add address=207.248.10.0/24 comment=Bloco-Operadora list=Permitidos
/ip firewall address-list add address=191.252.60.142 list=Permitidos
/ip firewall filter add action=fasttrack-connection chain=forward connection-state=established,related
/ip firewall filter add action=accept chain=input comment="Aceita conexoes estabelecidas e relacionadas" connection-state=established,related
/ip firewall filter add action=drop chain=input comment="Descarta conexoes invalidas" connection-state=invalid
/ip firewall filter add action=accept chain=input comment="Aceita SNMP" dst-port=161 protocol=udp
/ip firewall filter add action=accept chain=input comment=Aceita-WINBOX dst-port=8260 protocol=tcp
/ip firewall filter add action=accept chain=input comment=Aceita-OSPF protocol=ospf
/ip firewall filter add action=accept chain=input comment=ACEITA-IPSEC protocol=ipsec-esp
/ip firewall filter add action=accept chain=input comment=ACEITA-ICMP protocol=icmp
/ip firewall filter add action=accept chain=input comment=ACEITA-IPSEC protocol=ipsec-ah
/ip firewall filter add action=accept chain=input comment=Aceita-BGP dst-port=179 protocol=tcp
/ip firewall filter add action=accept chain=input comment=Aceita-Servicos dst-port=8222,8223,8282 protocol=tcp
/ip firewall filter add action=accept chain=input comment=Libera-L2TP dst-port=1701 protocol=tcp
/ip firewall filter add action=accept chain=input comment=Aceita-PPTP dst-port=1723 protocol=tcp
/ip firewall filter add action=accept chain=input comment=Libera-L2TP dst-port=500,4500 protocol=udp
/ip firewall filter add action=add-src-to-address-list address-list=Estagio1 address-list-timeout=5s chain=input comment="Port Knocking Stage2 TCP 2987" dst-port=2987 protocol=tcp
/ip firewall filter add action=add-src-to-address-list address-list=Estagio2 address-list-timeout=10s chain=input comment="Port Knocking Stage3 TCP 5460" dst-port=5460 protocol=tcp src-address-list=Estagio1
/ip firewall filter add action=add-src-to-address-list address-list=Permitidos address-list-timeout=2h chain=input comment="Port Knocking Stage3 TCP 5000" dst-port=5000 protocol=tcp src-address-list=Estagio2
/ip firewall filter add action=drop chain=forward comment="IXCProvedor regra de aviso bloqueio" dst-address=!207.248.10.142 protocol=tcp src-address=172.21.1.0/24
/ip firewall filter add action=drop chain=forward comment="IXCProvedor regra de aviso bloqueio" dst-address=!207.248.10.142 protocol=tcp src-address-list=aviso_bloqueio
/ip firewall filter add action=drop chain=forward comment="IXCProvedor regra de aviso bloqueio" dst-port=!53 protocol=udp src-address=172.21.1.0/24
/ip firewall filter add action=drop chain=forward comment="IXCProvedor regra de aviso bloqueio" dst-port=!53 protocol=udp src-address-list=aviso_bloqueio
/ip firewall filter add action=drop chain=forward comment="IXCProvedor regra de aguardando assinatura" dst-address=!207.248.10.142 protocol=tcp src-address=172.22.1.0/24
/ip firewall filter add action=drop chain=forward comment="IXCProvedor regra de aguardando assinatura" dst-address=!207.248.10.142 protocol=tcp src-address-list=aguardando_assinatura
/ip firewall filter add action=drop chain=forward comment="IXCProvedor regra de aguardando assinatura" dst-port=!53 protocol=udp src-address=172.22.1.0/24
/ip firewall filter add action=drop chain=forward comment="IXCProvedor regra de aguardando assinatura" dst-port=!53 protocol=udp src-address-list=aguardando_assinatura
/ip firewall filter add action=drop chain=forward src-address=172.21.1.0/24
/ip firewall filter add action=drop chain=input src-address-list=!Permitidos
/ip firewall nat add action=src-nat chain=srcnat comment="VPN PORTAL" dst-address=200.188.230.152 dst-port=443 out-interface=VPN_PORTAL protocol=tcp to-addresses=10.185.136.172
/ip firewall nat add action=src-nat chain=srcnat comment="VPN PORTAL" out-interface=VPN_PORTAL to-addresses=10.185.136.172
/ip firewall nat add action=src-nat chain=srcnat comment="ACESSO-Ol\E9\A0TV" dst-address=200.188.230.152 dst-port=443 protocol=tcp to-addresses=207.248.10.128
/ip firewall nat add action=same chain=srcnat comment=NAT-BGP same-not-by-dst=yes src-address=100.65.102.128 to-addresses=186.219.234.224/27
/ip firewall nat add action=same chain=srcnat comment=NAT-BGP same-not-by-dst=yes src-address=100.64.0.0/21 to-addresses=186.219.234.224/27
/ip firewall nat add action=same chain=srcnat comment=CE-ALPES same-not-by-dst=yes src-address=100.96.114.0/24 to-addresses=186.219.234.224/27
/ip firewall nat add action=src-nat chain=srcnat comment=NAT-DNS src-address=172.31.254.32/29 to-addresses=186.219.234.0
/ip firewall nat add action=src-nat chain=srcnat src-address=100.65.98.215 to-addresses=186.219.234.0
/ip firewall nat add action=same chain=srcnat comment=NAT-ESTRANHO same-not-by-dst=yes src-address=10.1.254.0/24 to-addresses=186.219.234.224/27
/ip firewall nat add action=same chain=srcnat comment=NAT-ANHEMBI same-not-by-dst=yes src-address=100.64.13.0/24 to-addresses=186.219.234.224/27
/ip firewall nat add action=same chain=srcnat comment="NAT BFT2" same-not-by-dst=yes src-address=100.65.96.0/21 to-addresses=186.219.234.224/27
/ip firewall nat add action=same chain=srcnat same-not-by-dst=yes src-address=100.64.0.0/21 to-addresses=186.219.234.224/27
/ip firewall nat add action=src-nat chain=srcnat comment=NAT-ESTRANHO disabled=yes src-address=10.1.254.0/24 to-addresses=207.248.10.131
/ip firewall nat add action=dst-nat chain=dstnat comment="IXCProvedor regra de aviso atraso" dst-address=!207.248.10.142 dst-port=80 protocol=tcp src-address=172.20.1.0/24 to-addresses=207.248.10.142 to-ports=8083
/ip firewall nat add action=dst-nat chain=dstnat comment="IXCProvedor regra de aviso atraso" dst-address=!207.248.10.142 dst-port=80 protocol=tcp src-address-list=aviso_atraso to-addresses=207.248.10.142 to-ports=8083
/ip firewall nat add action=dst-nat chain=dstnat comment="IXCProvedor regra de aviso bloqueio" dst-address=!207.248.10.142 dst-port=80 protocol=tcp src-address=172.21.1.0/24 to-addresses=207.248.10.142 to-ports=8082
/ip firewall nat add action=dst-nat chain=dstnat comment="IXCProvedor regra de aviso bloqueio" dst-address=!207.248.10.142 dst-port=80 protocol=tcp src-address-list=aviso_bloqueio to-addresses=207.248.10.142 to-ports=8082
/ip firewall nat add action=dst-nat chain=dstnat comment="IXCProvedor regra de aguardando assinatura" dst-address=!207.248.10.142 dst-port=80 protocol=tcp src-address=172.22.1.0/24 to-addresses=207.248.10.142 to-ports=8086
/ip firewall nat add action=dst-nat chain=dstnat comment="IXCProvedor regra de aguardando assinatura" dst-address=!207.248.10.142 dst-port=80 protocol=tcp src-address-list=aguardando_assinatura to-addresses=207.248.10.142 to-ports=8086
/ip firewall nat add action=src-nat chain=srcnat comment="NAT CAMERAS" src-address=192.168.144.0/24 to-addresses=164.163.193.7
/ip firewall nat add action=src-nat chain=srcnat comment="NAT CAMERAS" src-address=192.168.146.0/24 to-addresses=164.163.193.7
/ip firewall nat add action=dst-nat chain=dstnat comment="pppoe guilhermefarmacia" dst-address=177.20.169.12 dst-port=4647 protocol=tcp to-addresses=10.1.254.20 to-ports=4647
/ip firewall nat add action=dst-nat chain=dstnat comment="pppoe guilhermefarmacia" dst-address=177.20.169.12 dst-port=4647 protocol=udp to-addresses=10.1.254.20 to-ports=4647
/ip firewall nat add action=dst-nat chain=dstnat comment="ACESSO EXTERNO FTP" dst-address=45.6.32.37 dst-port=4654 protocol=tcp to-addresses=172.31.254.36 to-ports=22
/ip firewall nat add action=dst-nat chain=dstnat comment="ACESSO EXTERNO FTP" dst-address=45.6.32.37 dst-port=4653 protocol=tcp to-addresses=172.31.254.36 to-ports=21
/ip firewall nat add action=dst-nat chain=dstnat comment=GRAFANA dst-address=207.248.10.128 dst-port=3000 protocol=tcp to-addresses=172.31.254.34 to-ports=3000
/ip firewall nat add action=dst-nat chain=dstnat comment=LOG-ARTNET dst-address=207.248.10.128 dst-port=65520 protocol=tcp to-addresses=172.31.254.46 to-ports=22
/ip firewall nat add action=dst-nat chain=dstnat comment=Redirect-MIMOSA-AP dst-address=207.248.10.128 dst-port=8091 protocol=tcp to-addresses=10.69.0.10 to-ports=80
/ip firewall nat add action=dst-nat chain=dstnat comment="ACESSO EXTERNO-XENSERVER" dst-address=207.248.10.128 dst-port=65443 protocol=tcp to-addresses=172.31.254.10 to-ports=443
/ip firewall nat add action=dst-nat chain=dstnat comment=NS-ARTNET dst-address=207.248.10.128 dst-port=65521 protocol=tcp to-addresses=172.31.254.35 to-ports=22
/ip firewall nat add action=dst-nat chain=dstnat comment="DVR ArtNet" dst-address=45.6.32.37 dst-port=5559 protocol=tcp to-addresses=192.168.138.2 to-ports=5559
/ip firewall nat add action=dst-nat chain=dstnat comment="Camera ze carlinhos 1" dst-address=207.248.10.129 dst-port=64000 protocol=tcp to-addresses=192.168.144.170 to-ports=37777
/ip firewall nat add action=dst-nat chain=dstnat comment="Camera ze carlinhos 2" dst-address=207.248.10.129 dst-port=64001 protocol=tcp to-addresses=192.168.144.171 to-ports=37777
/ip firewall nat add action=dst-nat chain=dstnat comment="Camera ze carlinhos 2 http" dst-address=207.248.10.129 dst-port=64003 protocol=tcp to-addresses=192.168.144.170 to-ports=80
/ip firewall nat add action=dst-nat chain=dstnat comment="Camera ze carlinhos 1 http" dst-address=45.6.32.37 dst-port=64002 protocol=tcp to-addresses=10.10.30.4 to-ports=80
/ip firewall nat add action=dst-nat chain=dstnat comment="DVR ArtNet" dst-address=177.20.169.10 dst-port=5555 protocol=tcp to-addresses=10.1.254.11 to-ports=5555
/ip firewall nat add action=dst-nat chain=dstnat comment="DVR ArtNet" dst-address=45.6.32.37 dst-port=8097 protocol=tcp to-addresses=192.168.147.133 to-ports=80
/ip firewall nat add action=dst-nat chain=dstnat comment="OLT ZTE TELNET" dst-address=207.248.10.141 dst-port=4005 protocol=tcp to-addresses=172.31.254.26 to-ports=23
/ip firewall nat add action=dst-nat chain=dstnat comment="OLT ZTE TELNET" dst-address=207.248.10.141 dst-port=65522 protocol=tcp src-address-list=Permitidos to-addresses=172.31.254.26 to-ports=22
/ip firewall nat add action=dst-nat chain=dstnat comment="OLT ZTE TELNET" dst-address=45.6.32.37 dst-port=4005 protocol=tcp to-addresses=172.31.254.26 to-ports=23
/ip firewall nat add action=dst-nat chain=dstnat comment="OLT ZTE SNMP" dst-address=189.108.3.222 dst-port=4006 protocol=udp to-addresses=172.31.254.26 to-ports=161
/ip firewall nat add action=dst-nat chain=dstnat comment="\7Fguilherme.farmacia" dst-address=45.6.32.37 dst-port=4607 protocol=tcp to-addresses=10.2.254.20 to-ports=4607
/ip firewall nat add action=dst-nat chain=dstnat comment=guilherme.farmacia dst-address=45.6.32.37 dst-port=4607 protocol=udp to-addresses=10.2.254.20 to-ports=4607
/ip firewall nat add action=dst-nat chain=dstnat comment="DVR Paula" dst-address=45.6.32.37 dst-port=9937 protocol=tcp to-addresses=10.1.254.22 to-ports=9937
/ip firewall nat add action=dst-nat chain=dstnat comment="CAMERA IP ZE CARLINHOS STA" dst-address=207.248.10.129 dst-port=9940 protocol=tcp to-addresses=10.10.30.6 to-ports=37777
/ip firewall nat add action=dst-nat chain=dstnat comment="CAMERA IP ZE CARLINHOS STA" dst-address=207.248.10.129 dst-port=9941 protocol=tcp to-addresses=10.10.30.5 to-ports=37777
/ip firewall nat add action=dst-nat chain=dstnat comment="CAMERA ZE CARLINHOS BFT" dst-address=207.248.10.129 dst-port=39855 protocol=tcp to-addresses=10.1.254.24 to-ports=37777
/ip firewall nat add action=dst-nat chain=dstnat comment=giselda.silva86 dst-address=207.248.10.128 dst-port=18070 protocol=udp to-addresses=10.1.254.26 to-ports=18070
/ip firewall nat add action=dst-nat chain=dstnat comment=giselda.silva86 dst-address=207.248.10.128 dst-port=18070 protocol=tcp to-addresses=10.1.254.26 to-ports=18070
/ip firewall nat add action=dst-nat chain=dstnat comment=giselda.silva86 dst-address=207.248.10.128 dst-port=16036 protocol=tcp to-addresses=10.1.254.26 to-ports=16036
/ip firewall nat add action=dst-nat chain=dstnat comment=giselda.silva86 dst-address=207.248.10.128 dst-port=16036 protocol=udp to-addresses=10.1.254.26 to-ports=16036
/ip firewall nat add action=dst-nat chain=dstnat comment="Camera IP Hamilton" dst-address=45.6.32.37 dst-port=44555 protocol=tcp to-addresses=10.1.254.23 to-ports=44555
/ip firewall nat add action=dst-nat chain=dstnat comment="Camera IP Hamilton 2" dst-address=45.6.32.37 dst-port=44556 protocol=tcp to-addresses=10.1.254.23 to-ports=44556
/ip firewall nat add action=dst-nat chain=dstnat comment="CLIENTE joao.casa84" dst-address=45.6.32.37 dst-port=9001 protocol=tcp to-addresses=100.64.4.223 to-ports=9001
/ip firewall nat add action=dst-nat chain=dstnat comment="CLIENTE joao.casa84" dst-address=45.6.32.37 dst-port=9001 protocol=udp to-addresses=10.1.254.25 to-ports=9001
/ip firewall nat add action=dst-nat chain=dstnat comment="DVR TREVO" dst-address=45.6.32.56 dst-port=82 protocol=tcp to-addresses=45.6.32.56 to-ports=82
/ip firewall nat add action=dst-nat chain=dstnat comment="Marcos Cesar Valente Ruiz" dst-address=189.108.3.222 dst-port=37780 protocol=tcp to-addresses=10.1.254.1 to-ports=37780
/ip firewall nat add action=dst-nat chain=dstnat comment="Joel Junior de Paula Ramos" dst-address=189.108.3.222 dst-port=37777 protocol=tcp to-addresses=10.1.254.2 to-ports=37777
/ip firewall nat add action=dst-nat chain=dstnat comment="Joel Junior de Paula Ramos" dst-address=189.108.3.222 dst-port=554 protocol=tcp to-addresses=10.1.254.2 to-ports=554
/ip firewall nat add action=dst-nat chain=dstnat comment="Joel Junior de Paula Ramos" dst-address=189.108.3.222 dst-port=8585 protocol=tcp to-addresses=10.1.254.2 to-ports=8585
/ip firewall nat add action=dst-nat chain=dstnat comment="DVR Delegacia PM" dst-address=207.248.10.129 dst-port=37770 protocol=tcp to-addresses=192.168.146.249 to-ports=37770
/ip firewall nat add action=dst-nat chain=dstnat comment="DVR artnet julho" dst-address=189.108.3.222 dst-port=30303 protocol=tcp to-addresses=10.1.3.75 to-ports=37777
/ip firewall nat add action=dst-nat chain=dstnat comment="leandro.rocha09 (Neusa Modas)" dst-address=189.108.3.222 dst-port=8000-8005 protocol=tcp to-addresses=10.1.254.8 to-ports=8000-8005
/ip firewall nat add action=dst-nat chain=dstnat comment="Alexandre Viotto 3" dst-address=189.108.3.222 dst-port=8080 protocol=tcp to-addresses=10.1.3.253 to-ports=8080
/ip firewall nat add action=dst-nat chain=dstnat comment="Ticianeli e Tilicianeli Drogaria Ltda" dst-address=189.108.3.222 dst-port=8181-8182 protocol=tcp to-addresses=10.1.254.5 to-ports=8181-8182
/ip firewall nat add action=dst-nat chain=dstnat comment="Ticianeli e Tilicianeli Drogaria Ltda" dst-address=189.108.3.222 dst-port=3030 protocol=tcp to-addresses=10.1.254.0 to-ports=80
/ip firewall nat add action=dst-nat chain=dstnat comment="Ticianeli e Tilicianeli Drogaria Ltda" dst-address=189.108.3.222 dst-port=3306 protocol=tcp to-addresses=10.1.254.5 to-ports=3306
/ip firewall nat add action=dst-nat chain=dstnat comment="Roberto Schimidt" dst-address=45.6.32.54 dst-port=34567 protocol=tcp to-addresses=10.1.254.6 to-ports=34567
/ip firewall nat add action=dst-nat chain=dstnat comment="Camera Praca 2" dst-address=45.6.32.34 dst-port=38881 protocol=tcp to-addresses=10.10.20.3 to-ports=38881
/ip firewall nat add action=dst-nat chain=dstnat comment="Camera Praca 1" dst-address=45.6.32.54 dst-port=38880 protocol=tcp to-addresses=10.10.20.2 to-ports=38880
/ip firewall nat add action=dst-nat chain=dstnat comment="Camera Praca 2" dst-address=45.6.32.34 dst-port=9000 protocol=tcp to-addresses=10.1.254.19 to-ports=9000
/ip firewall nat add action=dst-nat chain=dstnat comment="Camera Deposito 1" dst-address=189.108.3.222 dst-port=37710 protocol=tcp to-addresses=10.10.20.4 to-ports=37710
/ip firewall nat add action=dst-nat chain=dstnat comment=Emby dst-address=189.108.3.222 dst-port=8096 protocol=tcp to-addresses=192.168.144.254 to-ports=8096
/ip firewall nat add action=dst-nat chain=dstnat comment=Emby dst-address=189.108.3.222 dst-port=3389 protocol=tcp to-addresses=192.168.144.254 to-ports=3389
/ip firewall nat add action=dst-nat chain=dstnat comment="DVR Paula" dst-address=45.6.32.37 dst-port=37744 protocol=tcp to-addresses=10.1.254.21 to-ports=37744
/ip firewall nat add action=dst-nat chain=dstnat dst-address=207.248.10.131 dst-port=443 protocol=tcp to-addresses=172.31.254.42 to-ports=443
/ip firewall nat add action=dst-nat chain=dstnat dst-address=207.248.10.131 dst-port=8080 protocol=tcp to-addresses=172.31.254.42 to-ports=8080
/ip firewall nat add action=dst-nat chain=dstnat dst-address=207.248.10.131 dst-port=5060 protocol=tcp to-addresses=172.31.254.42 to-ports=5060
/ip firewall nat add action=dst-nat chain=dstnat dst-address=207.248.10.131 dst-port=80 protocol=tcp to-addresses=172.31.254.42 to-ports=80
/ip firewall nat add action=dst-nat chain=dstnat dst-address=207.248.10.129 dst-port=6699 protocol=tcp to-addresses=172.31.254.26 to-ports=23
/ip firewall nat add action=dst-nat chain=dstnat dst-address=207.248.10.141 dst-port=65523 protocol=tcp src-address-list=Permitidos to-addresses=172.31.254.26 to-ports=23
/ip firewall nat add action=dst-nat chain=dstnat comment=REDIRECIONAMENTO-valter.junior dst-address=207.248.10.131 dst-port=37777 protocol=tcp to-addresses=100.105.114.52 to-ports=37777
/ip firewall nat add action=src-nat chain=srcnat comment=NAT-CLIENTES src-address=100.64.0.0/20 to-addresses=207.248.10.141
/ip firewall nat add action=src-nat chain=srcnat comment=NAT-TESTE-LINK src-address=10.20.30.0/24 to-addresses=207.248.10.135
/ip firewall nat add action=src-nat chain=srcnat comment="NAT CAMERAS" src-address=192.168.144.0/24 to-addresses=164.163.193.7
/ip firewall nat add action=src-nat chain=srcnat comment="NAT CAMERAS" src-address=192.168.146.0/24 to-addresses=164.163.193.7
/ip firewall nat add action=src-nat chain=srcnat dst-address=170.233.122.142 to-addresses=207.248.10.128
/ip firewall nat add action=accept chain=srcnat protocol=ospf
/ip firewall nat add action=accept chain=srcnat src-address=164.163.193.6/31
/ip firewall nat add action=accept chain=srcnat dst-address=164.163.193.6/31
/ip firewall nat add action=accept chain=srcnat dst-address=207.248.10.128/28
/ip firewall nat add action=accept chain=srcnat src-address=207.248.10.128/28
/ip firewall nat add action=accept chain=srcnat dst-address-list=Rede.Local src-address-list=Rede.Local
/ip firewall nat add action=src-nat chain=srcnat comment="LINK BRASIL" out-interface=vlan621 to-addresses=207.248.10.128/30
/ip firewall nat add action=masquerade chain=srcnat comment="NAT VIA PGB" out-interface="vlan810 - LINK PGB 500MB" to-addresses=10.98.98.2
/ip firewall nat add action=src-nat chain=srcnat src-address=10.10.30.0/24 to-addresses=45.6.32.37
/ip firewall nat add action=src-nat chain=srcnat comment=NAT-3011 src-address=192.168.100.0/29 to-addresses=45.6.32.37
/ip firewall nat add action=src-nat chain=srcnat comment="servidor speed teste werix 23.3.2022" src-address=172.31.254.44/30 to-addresses=177.20.169.1
/ip firewall nat add action=masquerade chain=srcnat comment="NAO DESATIVAR" out-interface="COMUNICACAO-ANHEMBI "
/ip firewall nat add action=masquerade chain=srcnat comment="NAO DESATIVAR" out-interface=eoip-tunnel1
/ip firewall nat add action=masquerade chain=srcnat out-interface=VLAN-1002-CCR-ARTNET-BFT-2
/ip firewall nat add action=src-nat chain=srcnat comment="NAT CLIENTE GUILHERME FARM\C0CIA" src-address=10.2.254.20 to-addresses=177.20.169.12
/ip firewall nat add action=dst-nat chain=dstnat comment="pppoe guilhermefarmacia" dst-address=177.20.169.12 dst-port=4647 protocol=tcp to-addresses=10.1.254.20 to-ports=4647
/ip firewall nat add action=dst-nat chain=dstnat comment="pppoe guilhermefarmacia" dst-address=177.20.169.12 dst-port=4647 protocol=udp to-addresses=10.1.254.20 to-ports=4647
/ip firewall nat add action=dst-nat chain=dstnat comment="ACESSO EXTERNO FTP" dst-address=45.6.32.37 dst-port=4654 protocol=tcp to-addresses=172.31.254.36 to-ports=22
/ip firewall nat add action=dst-nat chain=dstnat comment="ACESSO EXTERNO FTP" dst-address=45.6.32.37 dst-port=4653 protocol=tcp to-addresses=172.31.254.36 to-ports=21
/ip firewall nat add action=dst-nat chain=dstnat comment=GRAFANA dst-address=207.248.10.128 dst-port=3000 protocol=tcp to-addresses=172.31.254.34 to-ports=3000
/ip firewall nat add action=dst-nat chain=dstnat comment=ST-ARTNET dst-address=207.248.10.128 dst-port=65522 protocol=tcp to-addresses=172.31.254.42 to-ports=65522
/ip firewall nat add action=dst-nat chain=dstnat comment="ACESSO EXTERNO-XENSERVER" dst-address=207.248.10.128 dst-port=65443 protocol=tcp to-addresses=172.31.254.10 to-ports=443
/ip firewall nat add action=dst-nat chain=dstnat comment=NS-ARTNET dst-address=207.248.10.128 dst-port=65521 protocol=tcp to-addresses=172.31.254.35 to-ports=22
/ip firewall nat add action=dst-nat chain=dstnat comment="DVR ArtNet" dst-address=45.6.32.37 dst-port=5559 protocol=tcp to-addresses=192.168.138.2 to-ports=5559
/ip firewall nat add action=dst-nat chain=dstnat comment="Camera ze carlinhos 1" dst-address=207.248.10.129 dst-port=64000 protocol=tcp to-addresses=192.168.144.170 to-ports=37777
/ip firewall nat add action=dst-nat chain=dstnat comment="Camera ze carlinhos 2" dst-address=207.248.10.129 dst-port=64001 protocol=tcp to-addresses=192.168.144.171 to-ports=37777
/ip firewall nat add action=dst-nat chain=dstnat comment="Camera ze carlinhos 2 http" dst-address=207.248.10.129 dst-port=64003 protocol=tcp to-addresses=192.168.144.170 to-ports=80
/ip firewall nat add action=dst-nat chain=dstnat comment="Camera ze carlinhos 1 http" dst-address=45.6.32.37 dst-port=64002 protocol=tcp to-addresses=10.10.30.4 to-ports=80
/ip firewall nat add action=dst-nat chain=dstnat comment="DVR ArtNet" dst-address=177.20.169.10 dst-port=5555 protocol=tcp to-addresses=10.1.254.11 to-ports=5555
/ip firewall nat add action=dst-nat chain=dstnat comment="DVR ArtNet" dst-address=45.6.32.37 dst-port=8097 protocol=tcp to-addresses=192.168.147.133 to-ports=80
/ip firewall nat add action=dst-nat chain=dstnat comment="OLT ZTE TELNET" dst-address=207.248.10.141 dst-port=4005 protocol=tcp to-addresses=172.31.254.26 to-ports=23
/ip firewall nat add action=dst-nat chain=dstnat comment="OLT ZTE TELNET" dst-address=207.248.10.141 dst-port=65522 protocol=tcp src-address-list=Permitidos to-addresses=172.31.254.26 to-ports=22
/ip firewall nat add action=dst-nat chain=dstnat comment="OLT ZTE TELNET" dst-address=45.6.32.37 dst-port=4005 protocol=tcp to-addresses=172.31.254.26 to-ports=23
/ip firewall nat add action=dst-nat chain=dstnat comment="OLT ZTE SNMP" dst-address=189.108.3.222 dst-port=4006 protocol=udp to-addresses=172.31.254.26 to-ports=161
/ip firewall nat add action=dst-nat chain=dstnat comment="\7Fguilherme.farmacia" dst-address=45.6.32.37 dst-port=4607 protocol=tcp to-addresses=10.2.254.20 to-ports=4607
/ip firewall nat add action=dst-nat chain=dstnat comment=guilherme.farmacia dst-address=45.6.32.37 dst-port=4607 protocol=udp to-addresses=10.2.254.20 to-ports=4607
/ip firewall nat add action=dst-nat chain=dstnat comment="DVR Paula" dst-address=45.6.32.37 dst-port=9937 protocol=tcp to-addresses=10.1.254.22 to-ports=9937
/ip firewall nat add action=dst-nat chain=dstnat comment="CAMERA IP ZE CARLINHOS STA" dst-address=207.248.10.129 dst-port=9940 protocol=tcp to-addresses=10.10.30.6 to-ports=37777
/ip firewall nat add action=dst-nat chain=dstnat comment="CAMERA IP ZE CARLINHOS STA" dst-address=207.248.10.129 dst-port=9941 protocol=tcp to-addresses=10.10.30.5 to-ports=37777
/ip firewall nat add action=dst-nat chain=dstnat comment="CAMERA ZE CARLINHOS BFT" dst-address=207.248.10.129 dst-port=39855 protocol=tcp to-addresses=10.1.254.24 to-ports=37777
/ip firewall nat add action=dst-nat chain=dstnat comment=giselda.silva86 dst-address=207.248.10.128 dst-port=18070 protocol=udp to-addresses=10.1.254.26 to-ports=18070
/ip firewall nat add action=dst-nat chain=dstnat comment=giselda.silva86 dst-address=207.248.10.128 dst-port=18070 protocol=tcp to-addresses=10.1.254.26 to-ports=18070
/ip firewall nat add action=dst-nat chain=dstnat comment=giselda.silva86 dst-address=207.248.10.128 dst-port=16036 protocol=tcp to-addresses=10.1.254.26 to-ports=16036
/ip firewall nat add action=dst-nat chain=dstnat comment=giselda.silva86 dst-address=207.248.10.128 dst-port=16036 protocol=udp to-addresses=10.1.254.26 to-ports=16036
/ip firewall nat add action=dst-nat chain=dstnat comment="Camera IP Hamilton" dst-address=45.6.32.37 dst-port=44555 protocol=tcp to-addresses=10.1.254.23 to-ports=44555
/ip firewall nat add action=dst-nat chain=dstnat comment="Camera IP Hamilton 2" dst-address=45.6.32.37 dst-port=44556 protocol=tcp to-addresses=10.1.254.23 to-ports=44556
/ip firewall nat add action=dst-nat chain=dstnat comment="CLIENTE joao.casa84" dst-address=45.6.32.37 dst-port=9001 protocol=tcp to-addresses=100.64.4.223 to-ports=9001
/ip firewall nat add action=dst-nat chain=dstnat comment="CLIENTE joao.casa84" dst-address=45.6.32.37 dst-port=9001 protocol=udp to-addresses=10.1.254.25 to-ports=9001
/ip firewall nat add action=dst-nat chain=dstnat comment="DVR TREVO" dst-address=45.6.32.56 dst-port=82 protocol=tcp to-addresses=45.6.32.56 to-ports=82
/ip firewall nat add action=dst-nat chain=dstnat comment="Marcos Cesar Valente Ruiz" dst-address=189.108.3.222 dst-port=37780 protocol=tcp to-addresses=10.1.254.1 to-ports=37780
/ip firewall nat add action=dst-nat chain=dstnat comment="Joel Junior de Paula Ramos" dst-address=189.108.3.222 dst-port=37777 protocol=tcp to-addresses=10.1.254.2 to-ports=37777
/ip firewall nat add action=dst-nat chain=dstnat comment="Joel Junior de Paula Ramos" dst-address=189.108.3.222 dst-port=554 protocol=tcp to-addresses=10.1.254.2 to-ports=554
/ip firewall nat add action=dst-nat chain=dstnat comment="Joel Junior de Paula Ramos" dst-address=189.108.3.222 dst-port=8585 protocol=tcp to-addresses=10.1.254.2 to-ports=8585
/ip firewall nat add action=dst-nat chain=dstnat comment="DVR Delegacia PM" dst-address=207.248.10.129 dst-port=37770 protocol=tcp to-addresses=192.168.146.249 to-ports=37770
/ip firewall nat add action=dst-nat chain=dstnat comment="NVR Delegacia PM" dst-address=207.248.10.129 dst-port=37771 protocol=tcp to-addresses=192.168.146.248 to-ports=37771
/ip firewall nat add action=dst-nat chain=dstnat comment="DVR artnet julho" dst-address=189.108.3.222 dst-port=30303 protocol=tcp to-addresses=10.1.3.75 to-ports=37777
/ip firewall nat add action=dst-nat chain=dstnat comment="leandro.rocha09 (Neusa Modas)" dst-address=189.108.3.222 dst-port=8000-8005 protocol=tcp to-addresses=10.1.254.8 to-ports=8000-8005
/ip firewall nat add action=dst-nat chain=dstnat comment="Alexandre Viotto 3" dst-address=189.108.3.222 dst-port=8080 protocol=tcp to-addresses=10.1.3.253 to-ports=8080
/ip firewall nat add action=dst-nat chain=dstnat comment="Ticianeli e Tilicianeli Drogaria Ltda" dst-address=189.108.3.222 dst-port=8181-8182 protocol=tcp to-addresses=10.1.254.5 to-ports=8181-8182
/ip firewall nat add action=dst-nat chain=dstnat comment="Ticianeli e Tilicianeli Drogaria Ltda" dst-address=189.108.3.222 dst-port=3030 protocol=tcp to-addresses=10.1.254.0 to-ports=80
/ip firewall nat add action=dst-nat chain=dstnat comment="Ticianeli e Tilicianeli Drogaria Ltda" dst-address=189.108.3.222 dst-port=3306 protocol=tcp to-addresses=10.1.254.5 to-ports=3306
/ip firewall nat add action=dst-nat chain=dstnat comment="Roberto Schimidt" dst-address=45.6.32.54 dst-port=34567 protocol=tcp to-addresses=10.1.254.6 to-ports=34567
/ip firewall nat add action=dst-nat chain=dstnat comment="Camera Praca 2" dst-address=45.6.32.34 dst-port=38881 protocol=tcp to-addresses=10.10.20.3 to-ports=38881
/ip firewall nat add action=dst-nat chain=dstnat comment="Camera Praca 1" dst-address=45.6.32.54 dst-port=38880 protocol=tcp to-addresses=10.10.20.2 to-ports=38880
/ip firewall nat add action=dst-nat chain=dstnat comment="Camera Praca 2" dst-address=45.6.32.34 dst-port=9000 protocol=tcp to-addresses=10.1.254.19 to-ports=9000
/ip firewall nat add action=dst-nat chain=dstnat comment="Camera Deposito 1" dst-address=189.108.3.222 dst-port=37710 protocol=tcp to-addresses=10.10.20.4 to-ports=37710
/ip firewall nat add action=dst-nat chain=dstnat comment=Emby dst-address=189.108.3.222 dst-port=8096 protocol=tcp to-addresses=192.168.144.254 to-ports=8096
/ip firewall nat add action=dst-nat chain=dstnat comment=Emby dst-address=189.108.3.222 dst-port=3389 protocol=tcp to-addresses=192.168.144.254 to-ports=3389
/ip firewall nat add action=dst-nat chain=dstnat comment="DVR Paula" dst-address=45.6.32.37 dst-port=37744 protocol=tcp to-addresses=10.1.254.21 to-ports=37744
/ip firewall nat add action=dst-nat chain=dstnat dst-address=207.248.10.131 dst-port=443 protocol=tcp to-addresses=172.31.254.42 to-ports=443
/ip firewall nat add action=dst-nat chain=dstnat dst-address=207.248.10.131 dst-port=8080 protocol=tcp to-addresses=172.31.254.42 to-ports=8080
/ip firewall nat add action=dst-nat chain=dstnat dst-address=207.248.10.131 dst-port=5060 protocol=tcp to-addresses=172.31.254.42 to-ports=5060
/ip firewall nat add action=dst-nat chain=dstnat dst-address=207.248.10.131 dst-port=80 protocol=tcp to-addresses=172.31.254.42 to-ports=80
/ip firewall nat add action=dst-nat chain=dstnat dst-address=207.248.10.129 dst-port=6699 protocol=tcp to-addresses=172.31.254.26 to-ports=23
/ip firewall nat add action=dst-nat chain=dstnat dst-address=207.248.10.141 dst-port=65523 protocol=tcp src-address-list=Permitidos to-addresses=172.31.254.26 to-ports=23
/ip firewall nat add action=dst-nat chain=dstnat comment=REDIRECIONAMENTO-valter.junior dst-address=207.248.10.131 dst-port=37777 protocol=tcp to-addresses=100.105.114.52 to-ports=37777
/ip firewall nat add action=dst-nat chain=dstnat comment="OLT OVERTEK" dst-address=207.248.10.131 dst-port=37888 protocol=tcp to-addresses=192.168.20.6 to-ports=80
/ip firewall nat add action=dst-nat chain=dstnat comment=BK-SW-BONFETE-API dst-address=207.248.10.131 dst-port=3540 protocol=tcp to-addresses=10.69.0.2 to-ports=3540
/ip firewall nat add action=dst-nat chain=dstnat comment=BK-SW-BONFETE-FTP dst-address=207.248.10.131 dst-port=2221 protocol=tcp to-addresses=10.69.0.2 to-ports=21
/ip route add disabled=yes distance=1 gateway=172.30.0.21
/ip route add check-gateway=ping disabled=yes distance=1 gateway=164.163.193.6 pref-src=207.248.10.128
/ip route add distance=1 dst-address=100.64.8.0/22 gateway=172.30.0.49
/ip route add distance=1 dst-address=104.255.105.0/24 gateway=172.30.31.88
/ip route add distance=1 dst-address=172.30.1.2/32 gateway=192.168.200.2
/ip route add distance=1 dst-address=172.30.31.0/24 gateway=192.168.200.2
/ip route add distance=1 dst-address=172.30.32.0/24 gateway=192.168.200.2
/ip route add distance=1 dst-address=186.219.234.0/24 type=blackhole
/ip route add comment=CGNAT distance=1 dst-address=186.219.234.224/27 type=blackhole
/ip route add comment=VPN_PORTAL distance=1 dst-address=200.188.230.152/32 gateway=VPN_PORTAL
/ip route add comment="SERVIDOR TV" distance=1 dst-address=207.248.10.135/32 gateway=172.31.250.2
/ip route rule add comment="ACESSO INTERNO" dst-address=10.0.0.0/8 src-address=189.57.120.86/32 table=main
/ip route rule add comment="ACESSO INTERNO" dst-address=10.0.0.0/8 src-address=189.57.120.83/32 table=main
/ip route rule add comment="ACESSO INTERNO" dst-address=172.31.254.0/24 src-address=189.57.120.86/32 table=main
/ip route rule add comment="ACESSO INTERNO" dst-address=172.31.254.0/24 src-address=189.57.120.83/32 table=main
/ip route rule add comment="ACESSO EXTERNO" src-address=189.57.120.83/32 table=Rota-VIVO-DEDICADO
/ip route rule add comment="ACESSO EXTERNO" src-address=189.57.120.86/32 table=Rota-VIVO-DEDICADO
/ip route rule add comment="ACESSO INTERNO" disabled=yes dst-address=192.168.0.0/16 src-address=189.57.120.83/32 table=main
/ip route rule add comment="ACESSO INTERNO" disabled=yes dst-address=192.168.0.0/16 src-address=189.57.120.86/32 table=main
/ip service set telnet disabled=yes port=8223
/ip service set ftp address=191.252.60.142/32
/ip service set www port=8282
/ip service set ssh disabled=yes port=8222
/ip service set api address=172.31.254.0/24,207.248.10.0/24,191.252.60.142/32
/ip service set winbox port=8260
/ip service set api-ssl disabled=yes
/ip ssh set allow-none-crypto=yes forwarding-enabled=remote
/ipv6 address add address=2804:2178:400::9/126 advertise=no interface=VLAN_2053_IPV6
/ipv6 address add address=2804:2178:400::5/126 advertise=no comment=SPEED-TEST interface="ether6 - XENSERVER"
/ipv6 address add address=2804:2178::6/126 advertise=no interface=vlan621
/ipv6 address add address=2804:2178:400::d/126 advertise=no interface=VLAN_2053_IPV6
/ipv6 nd set [ find default=yes ] other-configuration=yes
/ipv6 route add distance=1 gateway=2804:2178::5
/ipv6 route add distance=1 dst-address=2804:2178:444::/47 gateway=2804:2178:400::e
/ipv6 route add distance=1 dst-address=2804:2178:446::/47 gateway=2804:2178:400::e
/lcd set backlight-timeout=never color-scheme=dark default-screen=interfaces read-only-mode=yes
/lcd interface set sfp-sfpplus1 disabled=yes
/lcd interface set ether2 disabled=yes
/lcd interface set "ether3 - IXC" disabled=yes
/lcd interface set "ether4 - (BFT-02)GERENCIA SERVIDOR ANTONIO" disabled=yes
/lcd interface set "ether5 - CLIENTES ESCRITORIO" disabled=yes
/lcd interface set "ether6 - XENSERVER" disabled=yes
/lcd interface set ether7 disabled=yes
/lcd interface set ether8 disabled=yes
/lcd interface pages set 0 interfaces=ether1
/lcd screen set 1 disabled=yes
/lcd screen set 2 disabled=yes
/lcd screen set 3 disabled=yes
/lcd screen set 4 disabled=yes
/lcd screen set 5 disabled=yes
/ppp aaa set interim-update=5m use-radius=yes
/ppp secret add name=dvr.delegacia password=@delegacia service=pppoe
/ppp secret add name=nvr.delegacia password=@delegacia service=pppoe
/ppp secret add local-address=10.155.1.5 name=Rb.Btu password=123@btu profile=default-encryption remote-address=10.155.1.6 service=l2tp
/ppp secret add disabled=yes name=ANHEMBI password=hb123lk4n remote-address=10.96.96.2 service=l2tp
/ppp secret add name=artnet.campos password=sales
/ppp secret add name=poio3 password=poio3 profile=PPPoE service=pppoe
/ppp secret add name=poio password=poio profile=PPPoE service=pppoe
/ppp secret add local-address=172.16.0.1 name=art.net.esc.bft password=bol192 profile=PPPoE remote-address=10.1.254.0 service=pppoe
/ppp secret add local-address=172.16.0.1 name=red.prefeitura password=123@pref profile=default-encryption remote-address=45.6.32.45 service=pptp
/ppp secret add local-address=10.155.1.9 name=Rb.Pgb password=@#551222 remote-address=10.155.1.10 routes=10.2.0.0/16 service=pptp
/ppp secret add local-address=10.254.254.29 name=Rb.Ouro password=@#551222 remote-address=10.254.254.30 service=pptp
/ppp secret add local-address=10.254.254.7 name=ptp.piramboia password=teste1 remote-address=10.254.254.8 service=pptp
/ppp secret add name=diego password=223600 profile=PPPoE service=pptp
/ppp secret add name=artnet-btu password=123@artnet profile=PPPoE service=pptp
/ppp secret add comment=VPN local-address=207.248.10.128 name=ppnetwork password=123@mudar profile=PPPoE remote-address=10.11.11.11
/ppp secret add name=artnet.campos password=sales profile=PPPoE service=pppoe
/ppp secret add comment=VPN name=BTU password=123@mudar profile=PPPoE remote-address=10.255.255.8
/ppp secret add name=wi-fi_social password=wi-fi_social profile=PPPoE service=pppoe
/ppp secret add name=cameras.prefeitura password=prefeitura profile=PPPoE service=pppoe
/ppp secret add name=roteador.testes password=testes profile=PPPoE service=pppoe
/ppp secret add name=artteste password=artteste profile=PPPoE service=pppoe
/ppp secret add name=gui password=bol15172526 profile=PPPoE service=pppoe
/ppp secret add comment="VPN ANTONIO" local-address=10.98.98.1 name=digitalnet password=kn2kn25fw remote-address=10.98.98.2 service=pptp
/ppp secret add name=praca password=praca.show profile=PPPoE service=pppoe
/ppp secret add comment=VPN local-address=45.6.32.37 name=artnet password=efk#nm@klm235 remote-address=10.10.10.11 service=l2tp
/ppp secret add comment=VPN local-address=45.6.32.37 name=TORRE password=hb123lk4n profile=PPPoE remote-address=10.96.96.5
/ppp secret add name=vpn-procyon password=1q2w3e4r5T!@# profile=PPPoE service=l2tp
/ppp secret add name=gui1 password=gui1 profile=PPPoE service=pppoe
/ppp secret add name=consultorio.teste password=consultorio1805 service=pppoe
/ppp secret add name=festa.torresmo password=torresmo service=pppoe
/ppp secret add comment="{IXCSoft PPPOE -> alexandra.assuncao}" disabled=yes name=alexandra.assuncao password=silva profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:5A:D6:A9 comment="{IXCSoft PPPOE -> evandro.henrique}" disabled=yes name=evandro.henrique password=cardoso profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=D8:77:8B:3B:6A:F6 comment="{IXCSoft PPPOE -> francinelma.silva}" disabled=yes name=francinelma.silva password=vicente profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=B8:19:04:C3:65:D4 comment="{IXCSoft PPPOE -> regina.celia}" disabled=yes name=regina.celia password=vianna profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=E8:9E:0C:00:91:E1 comment="{IXCSoft PPPOE -> valmir.jose}" disabled=yes name=valmir.jose password=camargo profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=80:2A:A8:66:96:13 comment="{IXCSoft PPPOE -> jonas.roberto}" disabled=yes name=jonas.roberto password=scacalossi profile=pool_bloqueio service=pppoe
/ppp secret add comment="{IXCSoft PPPOE -> dourival.leal}" disabled=yes name=dourival.leal password=silva profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:20:B4:E1 comment="{IXCSoft PPPOE -> juracy.matias}" disabled=yes name=juracy.matias password=silva profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=D4:6E:0E:50:B6:A3 comment="{IXCSoft PPPOE -> sidimar.silva}" disabled=yes name=sidimar.silva password=silva profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=DC:9F:DB:EC:C7:93 comment="{IXCSoft PPPOE -> janaina.cortez41}" disabled=yes name=janaina.cortez41 password=oliveira profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:1F:5C:28 comment="{IXCSoft PPPOE -> rui.marcilio133}" disabled=yes name=rui.marcilio133 password=oliveira profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=F0:9F:C2:86:C7:A3 comment="{IXCSoft PPPOE -> camilo.zanchetta139}" disabled=yes name=camilo.zanchetta139 password=zanchetta profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=AC:37:28:9D:9C:B7 comment="{IXCSoft PPPOE -> anaclea.cordeiro3}" disabled=yes name=anaclea.cordeiro3 password=pereira profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=58:10:8C:61:07:E9 comment="{IXCSoft PPPOE -> andressa.adriane}" disabled=yes name=andressa.adriane password=conceicao profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=C4:47:3F:2F:9B:FE comment="{IXCSoft PPPOE -> cicera.vania}" disabled=yes name=cicera.vania password=sobreira profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=58:10:8C:4F:CE:E2 comment="{IXCSoft PPPOE -> alyson.ferreira0843}" disabled=yes name=alyson.ferreira0843 password=silva profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:D7:1E:36 comment="{IXCSoft PPPOE -> edson.alonso805}" disabled=yes name=edson.alonso805 password=silva profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=30:B5:C2:AF:43:29 comment="{IXCSoft PPPOE -> rute.mendes3890}" disabled=yes name=rute.mendes3890 password=mendes profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=C8:E7:D8:83:50:BF comment="{IXCSoft PPPOE -> aline.vieira856}" disabled=yes name=aline.vieira856 password=silva profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=04:25:E0:E6:60:57 comment="{IXCSoft PPPOE -> edvando.barbosa27}" disabled=yes name=edvando.barbosa27 password=w74qa profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=00:1A:3F:80:28:C1 comment="{IXCSoft PPPOE -> jose.oraci3807}" disabled=yes name=jose.oraci3807 password=martins profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:1C:6A:42 comment="{IXCSoft PPPOE -> marcela.regina}" disabled=yes name=marcela.regina password=barros profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=90:03:25:A6:68:67 comment="{IXCSoft PPPOE -> crispina.leite}" disabled=yes name=crispina.leite password=crispina profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=EC:8A:C7:81:EA:B0 comment="{IXCSoft PPPOE -> willian.camargo032}" disabled=yes name=willian.camargo032 password=3e4ae profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:1F:82:80 comment="{IXCSoft PPPOE -> vinicius.strombeck1}" disabled=yes name=vinicius.strombeck1 password=paes profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:86:AC:B0 comment="{IXCSoft PPPOE -> josafa.nobre887}" disabled=yes name=josafa.nobre887 password=soares profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=58:10:8C:5F:54:97 comment="{IXCSoft PPPOE -> leandro.aparecido}" disabled=yes name=leandro.aparecido password=silva profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:BF:45:02 comment="{IXCSoft PPPOE -> dirceu.martiro891}" disabled=yes name=dirceu.martiro891 password=martiro profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:B9:B4:24 comment="{IXCSoft PPPOE -> dias.pinto60}" disabled=yes name=dias.pinto60 password=dias605 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=44:D9:E7:44:52:34 comment="{IXCSoft PPPOE -> josiane.59}" disabled=yes name=josiane.59 password=morais profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=04:EC:BB:0C:A0:80 comment="{IXCSoft PPPOE -> luan.rodrigues.90}" disabled=yes name=luan.rodrigues.90 password=melo profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=04:18:D6:EA:6F:40 comment="{IXCSoft PPPOE -> luiz.gebara44}" disabled=yes name=luiz.gebara44 password=gebara profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:16:80:D3 comment="{IXCSoft PPPOE -> renato.cruz26}" disabled=yes name=renato.cruz26 password=cruz26 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=88:CF:98:AE:22:7D comment="{IXCSoft PPPOE -> daniele.silva02}" disabled=yes name=daniele.silva02 password=silva02 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=44:82:E5:F9:BA:A6 comment="{IXCSoft PPPOE -> patricia.silva30}" disabled=yes name=patricia.silva30 password=silva30 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:DD:F8:C2 comment="{IXCSoft PPPOE -> ziran.alves}" disabled=yes name=ziran.alves password=alves profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:D7:1D:38 comment="{IXCSoft PPPOE -> dirceu.bar}" disabled=yes name=dirceu.bar password=bar profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=44:D9:E7:72:5C:A0 comment="{IXCSoft PPPOE -> debora.pontes211}" disabled=yes name=debora.pontes211 password=t3316368 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=00:27:22:D6:62:9E comment="{IXCSoft PPPOE -> edizia.arruda23}" disabled=yes name=edizia.arruda23 password=53qr4x95 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=58:10:8C:74:20:0F comment="{IXCSoft PPPOE -> rui.reis30}" disabled=yes name=rui.reis30 password=6f44fc82 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=88:CF:98:AB:C3:67 comment="{IXCSoft PPPOE -> fabiane.lima14}" disabled=yes name=fabiane.lima14 password=mp5gz profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=58:10:8C:5F:54:87 comment="{IXCSoft PPPOE -> valdir.casa8}" disabled=yes name=valdir.casa8 password=9d722 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:86:AD:24 comment="{IXCSoft PPPOE -> maria.cabral75}" disabled=yes name=maria.cabral75 password=8kpgr profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=74:E1:9A:66:C7:40 comment="{IXCSoft PPPOE -> isabelle.bispo44}" disabled=yes name=isabelle.bispo44 password=2xi25 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=74:E1:9A:23:34:20 comment="{IXCSoft PPPOE -> lucas.abreu79}" disabled=yes name=lucas.abreu79 password=kz8v4 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=20:C9:D0:2C:C5:25 comment="{IXCSoft PPPOE -> aldenize.silva24}" disabled=yes name=aldenize.silva24 password=87723 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=DC:9F:DB:EA:05:CF comment="{IXCSoft PPPOE -> mauricio.prado71}" disabled=yes name=mauricio.prado71 password=iuvqq profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=78:17:35:A8:AB:1D comment="{IXCSoft PPPOE -> gustavo.mangueira40}" disabled=yes name=gustavo.mangueira40 password=ev154 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=88:CF:98:AD:23:D8 comment="{IXCSoft PPPOE -> lindalvo.silva62}" disabled=yes name=lindalvo.silva62 password=e1375 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=00:27:22:F6:39:DC comment="{IXCSoft PPPOE -> claudinei.cosso80}" disabled=yes name=claudinei.cosso80 password=vk4c7 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=B0:95:75:4D:C4:BA comment="{IXCSoft PPPOE -> rodrigo.oliveira47}" disabled=yes name=rodrigo.oliveira47 password=hlmzy profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=C4:47:3F:4F:3D:9C comment="{IXCSoft PPPOE -> jaqueline.rodrigues52}" disabled=yes name=jaqueline.rodrigues52 password=99ski profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=CC:32:E5:A0:EA:E3 comment="{IXCSoft PPPOE -> ana.pimenta05}" disabled=yes name=ana.pimenta05 password=dix4u profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=DC:9F:DB:40:B0:85 comment="{IXCSoft PPPOE -> claudineia.araujo97}" disabled=yes name=claudineia.araujo97 password=h64qk profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=58:10:8C:74:1E:91 comment="{IXCSoft PPPOE -> deli.sampaio80}" disabled=yes name=deli.sampaio80 password=3ygzz profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=E0:28:61:17:B5:97 comment="{IXCSoft PPPOE -> paulo.lourenco63}" disabled=yes name=paulo.lourenco63 password=eq5wd profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=74:DA:88:85:50:AD comment="{IXCSoft PPPOE -> stefany.silva08}" disabled=yes name=stefany.silva08 password=2ekr9 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=00:1A:3F:F8:A2:12 comment="{IXCSoft PPPOE -> marcelo.guarnieri13}" disabled=yes name=marcelo.guarnieri13 password=f1hv6 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=48:51:CF:31:CA:69 comment="{IXCSoft PPPOE -> djanilda.justino17}" disabled=yes name=djanilda.justino17 password=5tik3 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=58:3B:D9:03:1A:C0 comment="{IXCSoft PPPOE -> flavio.lucas14}" disabled=yes name=flavio.lucas14 password=9x642 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:FE:04:72 comment="{IXCSoft PPPOE -> jose.saldanha90}" disabled=yes name=jose.saldanha90 password=3exqa profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=00:BE:9E:56:EB:50 comment="{IXCSoft PPPOE -> ronald.pina37}" disabled=yes name=ronald.pina37 password=q3zak profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=04:EC:BB:67:0E:A0 comment="{IXCSoft PPPOE -> silvana.silva27}" disabled=yes name=silvana.silva27 password=silva profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=04:EC:BB:1B:75:F0 comment="{IXCSoft PPPOE -> regis.oliveira99}" disabled=yes name=regis.oliveira99 password=vc59m profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=3C:FB:5C:13:3F:C0 comment="{IXCSoft PPPOE -> alessandro.coelho93}" disabled=yes name=alessandro.coelho93 password=6nl73 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=3C:FB:5C:12:DB:A0 comment="{IXCSoft PPPOE -> rogerio.zanata}" disabled=yes name=rogerio.zanata password=44663 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=24:FD:0D:26:8A:AD comment="{IXCSoft PPPOE -> antonio.cunha33}" disabled=yes name=antonio.cunha33 password=9kdx6 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=04:EC:BB:6D:67:90 comment="{IXCSoft PPPOE -> jose.cabral35}" disabled=yes name=jose.cabral35 password=54gwl profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=00:BE:9E:56:7D:50 comment="{IXCSoft PPPOE -> solange.silva60}" disabled=yes name=solange.silva60 password=l3ed8 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=00:BE:9E:54:D0:60 comment="{IXCSoft PPPOE -> deivison.ribeiro61}" disabled=yes name=deivison.ribeiro61 password=i63cx profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=54:51:1B:F1:83:27 comment="{IXCSoft PPPOE -> lucas.chagas97}" disabled=yes name=lucas.chagas97 password=q993p profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=74:E1:9A:23:4E:80 comment="{IXCSoft PPPOE -> rodrigo.cardoso394}" disabled=yes name=rodrigo.cardoso394 password=ih479 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:BC:6D:96 comment="{IXCSoft PPPOE -> kaue.souza60}" disabled=yes name=kaue.souza60 password=nk61t profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=00:BE:9E:63:AC:B0 comment="{IXCSoft PPPOE -> francisco.firmino87}" disabled=yes name=francisco.firmino87 password=87666 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=24:FD:0D:C1:97:29 comment="{IXCSoft PPPOE -> deleon.vianna}" disabled=yes name=deleon.vianna password=2t94h profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=24:FD:0D:5D:46:5F comment="{IXCSoft PPPOE -> emilim.lucas}" disabled=yes name=emilim.lucas password=akl1x profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=74:E1:9A:23:60:A0 comment="{IXCSoft PPPOE -> fernanda.junqueira76}" disabled=yes name=fernanda.junqueira76 password=b6kxq profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:B9:B3:66 comment="{IXCSoft PPPOE -> jose.silva150}" disabled=yes name=jose.silva150 password=isy18 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=D8:77:8B:3B:3F:72 comment="{IXCSoft PPPOE -> patrick.lima60}" disabled=yes name=patrick.lima60 password=e39p5 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=D8:77:8B:3B:C5:24 comment="{IXCSoft PPPOE -> benedito.ribeiro22}" disabled=yes name=benedito.ribeiro22 password=1c5rp profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=D8:77:8B:3B:69:70 comment="{IXCSoft PPPOE -> margarete.macedo27}" disabled=yes name=margarete.macedo27 password=63629 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=3C:FB:5C:11:55:71 comment="{IXCSoft PPPOE -> carlos.lima60}" disabled=yes name=carlos.lima60 password=5te77 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=88:CF:98:AB:DD:A7 comment="{IXCSoft PPPOE -> thomas.leite}" disabled=yes name=thomas.leite password=qa55r profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=B0:4E:26:B1:41:67 comment="{IXCSoft PPPOE -> breno.costa729}" disabled=yes name=breno.costa729 password=u3f5y profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=D8:77:8B:3B:6A:E8 comment="{IXCSoft PPPOE -> delta.florestal60}" disabled=yes name=delta.florestal60 password=38274 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=D8:77:8B:3B:C7:40 comment="{IXCSoft PPPOE -> thiago.alves387}" disabled=yes name=thiago.alves387 password=l3zzu profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=D8:77:8B:3B:55:A4 comment="{IXCSoft PPPOE -> michele.paixao}" disabled=yes name=michele.paixao password=7h224 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=D8:77:8B:3B:55:B0 comment="{IXCSoft PPPOE -> renato.domingues60}" disabled=yes name=renato.domingues60 password=n44wi profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=D8:77:8B:3B:C7:1E comment="{IXCSoft PPPOE -> patricia.cristina60}" disabled=yes name=patricia.cristina60 password=54q52 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:D7:8F:3A comment="{IXCSoft PPPOE -> fabricio.pedroso15}" disabled=yes name=fabricio.pedroso15 password=xwnb2 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=24:FD:0D:E0:C0:43 comment="{IXCSoft PPPOE -> fernando.david60}" disabled=yes name=fernando.david60 password=8g139 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=88:CF:98:AC:D1:3A comment="{IXCSoft PPPOE -> carlos.barbosa3046}" disabled=yes name=carlos.barbosa3046 password=w65a3 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=3C:FB:5C:F7:4A:00 comment="{IXCSoft PPPOE -> maria.sueli3189}" disabled=yes name=maria.sueli3189 password=f6cs5 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=54:51:1B:F1:38:54 comment="{IXCSoft PPPOE -> antonio.santos57}" disabled=yes name=antonio.santos57 password=iqip8 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=00:BE:9E:55:52:50 comment="{IXCSoft PPPOE -> jose.jesus150}" disabled=yes name=jose.jesus150 password=9y867 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=54:51:1B:E9:C5:06 comment="{IXCSoft PPPOE -> bruno.santos400}" disabled=yes name=bruno.santos400 password=9r328 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=58:3B:D9:01:16:00 comment="{IXCSoft PPPOE -> geisielen.silva444}" disabled=yes name=geisielen.silva444 password=x14v7 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:FE:04:70 comment="{IXCSoft PPPOE -> lucas.dias481}" disabled=yes name=lucas.dias481 password=bck2s profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:BF:46:10 comment="{IXCSoft PPPOE -> melo.hilton150}" disabled=yes name=melo.hilton150 password=9w74h profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=74:E1:9A:23:2B:71 comment="{IXCSoft PPPOE -> jailson.oliveira99}" disabled=yes name=jailson.oliveira99 password=12b7x profile=pool_bloqueio service=pppoe
/ppp secret add comment="{IXCSoft PPPOE -> claudinei.rogerio150}" disabled=yes name=claudinei.rogerio150 password=1s7nc profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:63:9F:76 comment="{IXCSoft PPPOE -> sheila.correia61}" disabled=yes name=sheila.correia61 password=3v9s9 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=00:BE:9E:6D:C8:60 comment="{IXCSoft PPPOE -> jesimiel.sousa47}" disabled=yes name=jesimiel.sousa47 password=arerm profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=54:51:1B:F1:4E:02 comment="{IXCSoft PPPOE -> evelyn.batista60}" disabled=yes name=evelyn.batista60 password=83lir profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=D8:77:8B:3B:6B:28 comment="{IXCSoft PPPOE -> wellington.lopes27}" disabled=yes name=wellington.lopes27 password=dr73u profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=F0:9F:C2:BE:1B:D0 comment="{IXCSoft PPPOE -> valdeir.henrique}" disabled=yes name=valdeir.henrique password=s3612 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:D0:9D:E4 comment="{IXCSoft PPPOE -> jose.silva3313}" disabled=yes name=jose.silva3313 password=hgd4z profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=00:BE:9E:68:0F:60 comment="{IXCSoft PPPOE -> janete.pereira150}" disabled=yes name=janete.pereira150 password=6sdr1 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:D8:6E:94 comment="{IXCSoft PPPOE -> maria.caldas60}" disabled=yes name=maria.caldas60 password=pjfgk profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=44:3B:32:CC:8B:16 comment="{IXCSoft PPPOE -> auristella.centro33}" disabled=yes name=auristella.centro33 password=44sie profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=44:3B:32:CC:8B:10 comment="{IXCSoft PPPOE -> ana.alves8821}" disabled=yes name=ana.alves8821 password=ck9vk profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=D8:77:8B:96:2D:2B comment="{IXCSoft PPPOE -> elaine.cristina60}" disabled=yes name=elaine.cristina60 password=1s2b7 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:D0:9D:E2 comment="{IXCSoft PPPOE -> gheniffer.martins}" disabled=yes name=gheniffer.martins password=bkz7u profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=44:3B:32:CC:8A:A0 comment="{IXCSoft PPPOE -> francisco.soares06}" disabled=yes name=francisco.soares06 password=6vx76 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:B9:B4:06 comment="{IXCSoft PPPOE -> jose.cicero3260}" disabled=yes name=jose.cicero3260 password=jjn2l profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:B9:B3:74 comment="{IXCSoft PPPOE -> lucinete.bubula18}" disabled=yes name=lucinete.bubula18 password=4mzi8 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:BC:6D:8E comment="{IXCSoft PPPOE -> maiara.gomes}" disabled=yes name=maiara.gomes password=4k114 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=44:3B:32:CC:8B:12 comment="{IXCSoft PPPOE -> diego.souza32}" disabled=yes name=diego.souza32 password=kl4ks profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=24:FD:0D:37:3C:4B comment="{IXCSoft PPPOE -> maiara.ruiz34}" disabled=yes name=maiara.ruiz34 password=9gmx5 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=00:BE:9E:6D:8C:F0 comment="{IXCSoft PPPOE -> bruna.cabral39}" disabled=yes name=bruna.cabral39 password=c192x profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=00:BE:9E:54:C7:60 comment="{IXCSoft PPPOE -> clecia.cabral60}" disabled=yes name=clecia.cabral60 password=knd72 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=3C:FB:5C:F6:D9:D0 comment="{IXCSoft PPPOE -> fernandodepaula50}" disabled=yes name=fernandodepaula50 password=j7n94 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:FD:FF:DA comment="{IXCSoft PPPOE -> gessica.macedo65}" disabled=yes name=gessica.macedo65 password=s6617 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=00:BE:9E:55:1A:00 comment="{IXCSoft PPPOE -> tamires.santos75}" disabled=yes name=tamires.santos75 password=3b51q profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=D8:77:8B:3B:44:B4 comment="{IXCSoft PPPOE -> yasmin.mendes76}" disabled=yes name=yasmin.mendes76 password=4w613 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=54:DF:24:F1:AA:20 comment="{IXCSoft PPPOE -> ezeneide.soares82}" disabled=yes name=ezeneide.soares82 password=s51a4 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=54:3E:64:95:70:60 comment="{IXCSoft PPPOE -> janecleide.nascimento76}" disabled=yes name=janecleide.nascimento76 password=s8323 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:5A:D5:57 comment="{IXCSoft PPPOE -> eliane.barbosa20}" disabled=yes name=eliane.barbosa20 password=j3ngp profile=pool_bloqueio service=pppoe
/ppp secret add comment="{IXCSoft PPPOE -> edson.marcelo32}" disabled=yes name=edson.marcelo32 password=ugm71 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=58:3B:D9:01:12:00 comment="{IXCSoft PPPOE -> aline.barbosa30}" disabled=yes name=aline.barbosa30 password=w6939 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=00:BE:9E:63:79:A0 comment="{IXCSoft PPPOE -> ivone.santos28}" disabled=yes name=ivone.santos28 password=h5871 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=3C:FB:5C:11:57:80 comment="{IXCSoft PPPOE -> floriano.souza59}" disabled=yes name=floriano.souza59 password=fxk74 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=04:EC:BB:1A:CC:50 comment="{IXCSoft PPPOE -> wellington.alves134}" disabled=yes name=wellington.alves134 password=9395f profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:51:08:80 comment="{IXCSoft PPPOE -> tatiane.reis85}" disabled=yes name=tatiane.reis85 password=nbz99 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=28:BF:89:C5:8C:E0 comment="{IXCSoft PPPOE -> rogerio.chacara17}" disabled=yes name=rogerio.chacara17 password=266x3 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:DD:F8:BA comment="{IXCSoft PPPOE -> laylton.santos87}" disabled=yes name=laylton.santos87 password=7773s profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=24:CA:CB:A5:A9:90 comment="{IXCSoft PPPOE -> robinson.rodrigues3393}" disabled=yes name=robinson.rodrigues3393 password=hy357 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=04:25:E0:35:DB:5B comment="{IXCSoft PPPOE -> luiz.versolato12}" disabled=yes name=luiz.versolato12 password=6gym7 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=98:00:6A:7A:09:F2 comment="{IXCSoft PPPOE -> rogerio.souza26}" disabled=yes name=rogerio.souza26 password=97der profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=E0:1F:ED:0D:6B:94 comment="{IXCSoft PPPOE -> jose.macedo27}" disabled=yes name=jose.macedo27 password=r819i profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=24:CA:CB:A3:D7:70 comment="{IXCSoft PPPOE -> fabiana.leme56}" disabled=yes name=fabiana.leme56 password=x26y3 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:38:87:BA comment="{IXCSoft PPPOE -> manoel.basilio2}" disabled=yes name=manoel.basilio2 password=n5f5a profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=D0:59:95:BC:E0:C0 comment="{IXCSoft PPPOE -> rafael.ferreira1}" disabled=yes name=rafael.ferreira1 password=hcl8l profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=28:BF:89:C9:8A:00 comment="{IXCSoft PPPOE -> antonio.roberto011}" disabled=yes name=antonio.roberto011 password=e4n77 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=78:17:35:ED:58:41 comment="{IXCSoft PPPOE -> mateus.santos000}" disabled=yes name=mateus.santos000 password=vxr4u profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=54:DF:24:F5:FB:90 comment="{IXCSoft PPPOE -> valentim.filho3703}" disabled=yes name=valentim.filho3703 password=6a251 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:38:86:60 comment="{IXCSoft PPPOE -> sara.moraes27}" disabled=yes name=sara.moraes27 password=88kr3 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:BC:6D:14 comment="{IXCSoft PPPOE -> cicero.silva32}" disabled=yes name=cicero.silva32 password=nnp2l profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=B4:26:5D:AF:06:94 comment="{IXCSoft PPPOE -> cleide.maria3707}" disabled=yes name=cleide.maria3707 password=l2qya profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=44:3B:32:CC:8A:9A comment="{IXCSoft PPPOE -> anderson.antonio3715}" disabled=yes name=anderson.antonio3715 password=silva profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:BC:6D:8E comment="{IXCSoft PPPOE -> edson.conceicao3720}" disabled=yes name=edson.conceicao3720 password=v4h39 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=78:17:35:F2:2D:D4 comment="{IXCSoft PPPOE -> matheus.almeida3732}" disabled=yes name=matheus.almeida3732 password=2c6cx profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=78:17:35:EC:BF:B4 comment="{IXCSoft PPPOE -> luiz.paulo3733}" disabled=yes name=luiz.paulo3733 password=2l2rf profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=74:E1:9A:66:D8:10 comment="{IXCSoft PPPOE -> juliana.cristina30}" disabled=yes name=juliana.cristina30 password=323r7 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:DD:F9:32 comment="{IXCSoft PPPOE -> valdeci.sebastiao3750}" disabled=yes name=valdeci.sebastiao3750 password=x929l profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=04:EC:BB:E4:15:40 comment="{IXCSoft PPPOE -> erika.taiz54}" disabled=yes name=erika.taiz54 password=a9662 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:D7:8F:38 comment="{IXCSoft PPPOE -> nilma.petriceli}" disabled=yes name=nilma.petriceli password=tqfa9 profile=pool_bloqueio service=pppoe
/ppp secret add comment="{IXCSoft PPPOE -> suzete.coracao}" disabled=yes name=suzete.coracao password=k69pa profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=0C:6A:BC:04:FD:C1 comment="{IXCSoft PPPOE -> andre.coutinho02}" disabled=yes name=andre.coutinho02 password=3c6g8 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=E8:9E:0C:00:92:21 comment="{IXCSoft PPPOE -> gisele.pereira2}" disabled=yes name=gisele.pereira2 password=98r6m profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=CC:32:E5:1E:B6:03 comment="{IXCSoft PPPOE -> naclecio.medeiros}" disabled=yes name=naclecio.medeiros password=6z9x5 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=24:0B:88:4B:EA:24 comment="{IXCSoft PPPOE -> klinger.rocha487}" disabled=yes name=klinger.rocha487 password=f8j33 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=B8:19:04:C6:AD:51 comment="{IXCSoft PPPOE -> fernando.martins55}" disabled=yes name=fernando.martins55 password=7sg7y profile=pool_bloqueio service=pppoe
/ppp secret add comment="{IXCSoft PPPOE -> antoniel.santos}" disabled=yes name=antoniel.santos password=5jdm2 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=04:25:E0:B0:67:37 comment="{IXCSoft PPPOE -> adriana.jacintho}" disabled=yes name=adriana.jacintho password=38i4g profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:86:AD:1E comment="{IXCSoft PPPOE -> lucas.oliveira76}" disabled=yes name=lucas.oliveira76 password=22r1g profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:D7:1D:3A comment="{IXCSoft PPPOE -> aldo.ferreira81}" disabled=yes name=aldo.ferreira81 password=x99jk profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=58:10:8C:59:6B:2B comment="{IXCSoft PPPOE -> givaldo.ferreira02}" disabled=yes name=givaldo.ferreira02 password=tc478 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=00:BE:9E:56:ED:30 comment="{IXCSoft PPPOE -> edson.santos04}" disabled=yes name=edson.santos04 password=yj8eq profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=74:E1:9A:24:BB:30 comment="{IXCSoft PPPOE -> jefferson.rossato07}" disabled=yes name=jefferson.rossato07 password=asa8y profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=88:CF:98:AA:41:72 comment="{IXCSoft PPPOE -> renata.cristina97}" disabled=yes name=renata.cristina97 password=eu8yu profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=00:BE:9E:56:08:A0 comment="{IXCSoft PPPOE -> claudineia.alves13}" disabled=yes name=claudineia.alves13 password=1549g profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=88:B3:62:84:B0:94 comment="{IXCSoft PPPOE -> isidoro.marcos}" disabled=yes name=isidoro.marcos password=u98tg profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=E0:1F:ED:11:17:84 comment="{IXCSoft PPPOE -> fernando.barbosa}" disabled=yes name=fernando.barbosa password=e8rdp profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=10:47:38:A4:20:14 comment="{IXCSoft PPPOE -> giseli.gomes62}" disabled=yes name=giseli.gomes62 password=x1v47 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=D8:77:8B:3B:3F:6A comment="{IXCSoft PPPOE -> patricia.machado02}" disabled=yes name=patricia.machado02 password=33zvz profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=88:B3:62:99:1D:47 comment="{IXCSoft PPPOE -> matheus.araujo24}" disabled=yes name=matheus.araujo24 password=qa6nt profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=D8:77:8B:3B:59:CE comment="{IXCSoft PPPOE -> elisangela.cassia}" disabled=yes name=elisangela.cassia password=f445a profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:D7:E2:C9 comment="{IXCSoft PPPOE -> erika.santos35}" disabled=yes name=erika.santos35 password=h66ys profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=74:E1:9A:66:A4:B0 comment="{IXCSoft PPPOE -> jose.souza08}" disabled=yes name=jose.souza08 password=cu83p profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:C1:B2:3A comment="{IXCSoft PPPOE -> josenildo.docilio51}" disabled=yes name=josenildo.docilio51 password=bv686 profile=pool_bloqueio service=pppoe
/ppp secret add comment="{IXCSoft PPPOE -> maycon.douglas30}" disabled=yes name=maycon.douglas30 password=5fi17 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=8C:DC:02:5D:40:59 comment="{IXCSoft PPPOE -> marcelo.santos35}" disabled=yes name=marcelo.santos35 password=c8246 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=AC:84:C6:07:DE:FF comment="{IXCSoft PPPOE -> patrik.santos50}" disabled=yes name=patrik.santos50 password=p3bf3 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=FC:40:09:10:BC:4E comment="{IXCSoft PPPOE -> daiane.lisboa59}" disabled=yes name=daiane.lisboa59 password=59trl profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=00:BE:9E:6E:2B:10 comment="{IXCSoft PPPOE -> joao.andrade65}" disabled=yes name=joao.andrade65 password=2999h profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=18:0D:2C:86:AC:42 comment="{IXCSoft PPPOE -> luciano.silva75}" disabled=yes name=luciano.silva75 password=u2j7e profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=EC:8A:C7:80:B3:F0 comment="{IXCSoft PPPOE -> eduardo.henrique78}" disabled=yes name=eduardo.henrique78 password=515h9 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=44:3B:32:CC:8B:12 comment="{IXCSoft PPPOE -> cassandra.maria76}" disabled=yes name=cassandra.maria76 password=96i12 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=44:59:43:52:75:84 comment="{IXCSoft PPPOE -> suelen.ferreira82}" disabled=yes name=suelen.ferreira82 password=9t687 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=50:D4:F7:7B:73:BB comment="{IXCSoft PPPOE -> claudia.doneida04}" disabled=yes name=claudia.doneida04 password=rza1r profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=24:FD:0D:56:17:2F comment="{IXCSoft PPPOE -> mariana.oliveira93}" disabled=yes name=mariana.oliveira93 password=8i8h5 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=34:0A:33:F4:60:A1 comment="{IXCSoft PPPOE -> maria.jucilene24}" disabled=yes name=maria.jucilene24 password=78764 profile=pool_bloqueio service=pppoe
/ppp secret add caller-id=34:0A:33:F4:15:15 comment="{IXCSoft PPPOE -> ana.silva71}" disabled=yes name=ana.silva71 password=72rtq profile=pool_bloqueio service=pppoe
/radius add address=207.248.10.142 comment="IXCProvedor configuracao radius" secret=@#551222 service=ppp,hotspot,wireless src-address=186.219.234.0 timeout=3s
/radius add address=207.248.10.142 comment="IXCProvedor configuracao radius" disabled=yes secret=@#551222 service=ppp,hotspot,wireless src-address=207.248.10.128
/radius add address=45.171.231.140 comment="IXCProvedor configuracao radius" disabled=yes secret=tulipa service=ppp src-address=207.248.10.128 timeout=3s
/radius incoming set accept=yes
/routing bgp network add network=186.219.234.0/24 synchronize=no
/routing bgp peer add disabled=yes in-filter=EBGP-AS271253-IPv4-IN name=EBGP-LINKBRASIL-IPv4 out-filter=EBGP-AS271253-IPv4-OUT remote-address=172.25.0.205 remote-as=271253
/routing bgp peer add in-filter=EBGP-PEER1-IPv4-IN name=EBGP-LINKBRASIL-REDU out-filter=EBGP-PEER1-IPv4-OUT remote-address=172.30.31.88 remote-as=271253 update-source=172.30.31.89
/routing filter add action=accept chain=EBGP-AS271253-IPv4-IN prefix=0.0.0.0/0 set-bgp-local-pref=100 set-pref-src=186.219.234.0
/routing filter add action=discard chain=EBGP-AS271253-IPv4-IN
/routing filter add action=accept chain=EBGP-AS271253-IPv4-OUT prefix=186.219.234.0/24
/routing filter add action=discard chain=EBGP-AS271253-IPv4-OUT
/routing filter add action=accept chain=EBGP-PEER1-IPv4-IN prefix=0.0.0.0/0 set-bgp-local-pref=50 set-pref-src=186.219.234.0
/routing filter add action=discard chain=EBGP-PEER1-IPv4-IN
/routing filter add action=accept chain=EBGP-PEER1-IPv4-OUT prefix=186.219.234.0/24 set-bgp-prepend=3
/routing filter add action=discard chain=EBGP-PEER1-IPv4-OUT
/routing ospf area range add area=PPPoE disabled=yes range=10.5.48.0/21
/routing ospf interface add interface=Loopback network-type=point-to-point passive=yes
/routing ospf interface add network-type=point-to-point
/routing ospf interface add interface=VLAN-804-CLIENTE-PGB network-type=point-to-point
/routing ospf interface add interface=VLAN-1002-CCR-ARTNET-BFT-2 network-type=point-to-point
/routing ospf interface add interface=VLAN-850-NOVO-OSPF-PGB network-type=point-to-point
/routing ospf interface add interface=vlan350 network-type=point-to-point
/routing ospf interface add interface=vlan3004 network-type=point-to-point
/routing ospf interface add interface="ether4 - (BFT-02)GERENCIA SERVIDOR ANTONIO" network-type=point-to-point
/routing ospf interface add cost=100 interface=vlan2050 network-type=point-to-point
/routing ospf network add area=backbone network=186.219.234.0/32
/routing ospf network add area=backbone comment=Loopback network=172.16.0.1/32
/routing ospf network add area=backbone comment=Zabbix network=172.31.254.0/29
/routing ospf network add area=backbone comment="Servidor Speed Test" network=172.31.254.8/30
/routing ospf network add area=backbone comment=MK-AUTH network=172.31.255.0/29
/routing ospf network add area=backbone comment="Faixa Antenas " network=192.168.144.0/24
/routing ospf network add area=backbone comment=EoIP-BTU network=10.254.254.0/30
/routing ospf network add area=backbone comment=EoIP-PGB network=10.254.254.4/30
/routing ospf network add area=backbone comment="Link BFT2" network=10.254.254.8/30
/routing ospf network add area=backbone comment=IXC network=189.57.120.86/32
/routing ospf network add area=backbone comment="PTP OURO" network=10.10.50.0/30
/routing ospf network add area=backbone network=189.57.120.84/32
/routing ospf network add area=backbone network=10.12.0.0/30
/routing ospf network add area=backbone comment=bft2 network=10.12.0.4/30
/routing ospf network add area=backbone comment="TORRE PEDRA" network=30.30.30.0/30
/routing ospf network add area=backbone network=10.12.7.0/30
/routing ospf network add area=backbone network=10.10.100.0/30
/routing ospf network add area=backbone comment="CONCENTRADOR BTU" network=10.10.10.0/30
/routing ospf network add area=backbone network=192.168.168.0/30
/routing ospf network add area=backbone comment="BLOCO CLIENTES" network=10.1.0.0/22
/routing ospf network add area=backbone comment=EoIP-PGB network=10.155.1.8/30
/routing ospf network add area=backbone comment="OSPF PGB" network=30.30.30.8/30
/routing ospf network add area=backbone network=172.30.0.0/30
/routing ospf network add area=backbone network=10.255.255.0/32
/routing ospf network add area=backbone network=172.30.0.20/30
/routing ospf network add area=backbone network=192.168.200.0/30
/routing ospf network add area=backbone network=45.6.32.36/30
/routing ospf network add area=backbone network=172.30.2.0/30
/routing ospf network add area=backbone network=172.30.0.48/30
/routing ospf network add area=backbone network=172.30.0.52/30
/routing ospf network add area=backbone network=10.69.0.4/30
/routing ospf network add area=backbone network=10.69.0.8/29
/routing ospf network add area=backbone network=10.69.0.20/30
/snmp set contact=artnet.suporte1@gmail.com enabled=yes location=Brazil trap-community=ARTNET trap-generators=interfaces trap-version=2
/system clock set time-zone-autodetect=no time-zone-name=America/Sao_Paulo
/system clock manual set time-zone=-03:00
/system console set [ find ] disabled=yes
/system identity set name=001-RT-BNG-BFT-001
/system logging add disabled=yes topics=error,!pppoe,!ppp
/system logging add disabled=yes topics=info,!pppoe,!ppp
/system ntp client set primary-ntp=200.160.0.8 secondary-ntp=200.189.40.8
/system resource irq rps set sfp-sfpplus1 disabled=no
/system resource irq rps set "sfp-sfpplus2 - LINK BRASIL" disabled=no
/system resource irq rps set ether1 disabled=no
/system resource irq rps set ether2 disabled=no
/system resource irq rps set "ether3 - IXC" disabled=no
/system resource irq rps set "ether4 - (BFT-02)GERENCIA SERVIDOR ANTONIO" disabled=no
/system resource irq rps set "ether5 - CLIENTES ESCRITORIO" disabled=no
/system resource irq rps set "ether6 - XENSERVER" disabled=no
/system resource irq rps set ether7 disabled=no
/system resource irq rps set ether8 disabled=no
/system scheduler add interval=1d name=IXCProvedor_agendamento-backup on-event=IXCProvedor-fazer-e-enviar-backup policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive start-date=mar/13/2023 start-time=04:00:00
/system scheduler add interval=12h name="Envio backup" on-event=backup-email policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive start-date=jul/12/2019 start-time=17:00:00
/system scheduler add interval=6h name="Envio Log" on-event=log-email policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon start-date=jul/12/2019 start-time=00:00:01
/system scheduler add disabled=yes interval=1d name=scriptBackup12h on-event=scriptBackup policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon start-date=oct/24/2017 start-time=12:00:00
/system scheduler add disabled=yes interval=1d name=scriptBackup00h on-event=scriptBackup policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon start-date=oct/24/2017 start-time=00:00:00
/system scheduler add disabled=yes name=downgrade on-event="/system package downgrade\r\
    \n\
    \nyes" policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon start-date=may/10/2023 start-time=04:00:00
/system scheduler add disabled=yes name=upgrade on-event="/system routerboard upgrade" policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon start-date=may/10/2023 start-time=04:05:00
/system scheduler add disabled=yes name=reboot on-event="/system reboot" policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon start-date=may/10/2023 start-time=04:07:00
/system scheduler add interval=3d name=backup_dude_ftp on-event=backup_dude_ftp policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive start-date=apr/24/2023 start-time=06:50:00
/system script add dont-require-permissions=no name=IXCProvedor-fazer-e-enviar-backup owner=artnet-ixc policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive source="export file=backup-mikrotik_ARTNET_CONCENTRADOR_BFT_01.rsc; :log info message=\"IXCSoft enviando backup por email\"; /tool e-mail send to=\"artnet.suporte1@gmail.com\" subject=\"backup-ARTNET_CONCENTRADOR_BFT_01\" file=backup-mikrotik_ARTNET_CONCENTRADOR_BFT_01.rsc start-tls=yes"
/system script add dont-require-permissions=no name=backup-email owner=wilsonneto policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive source="/system backup save name=BKP-CCR-BFT.backup\r\
    \n:delay 2s\r\
    \n:global data [/system clock get date]\r\
    \n:global hora [/system clock get time]\r\
    \n/tool e-mail send to=\"artnet.suporte1@gmail.com\" subject=\"Mikrotik: Backup Automatico realizado em \$data as \$hora\" file=\"BKP-CCR-BFT.backup\" body=\"Em anexo, arquivo de backup da CCR de Bofete realizado as \$hora de \$data.\""
/system script add dont-require-permissions=no name=log-email owner=wilsonneto policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive source="/log print file=log-ccr-bft.txt\r\
    \n:delay 2s\r\
    \n:global data [/system clock get date]\r\
    \n:global hora [/system clock get time]\r\
    \n/tool e-mail send to=\"artnet.suporte1@gmail.com\" subject=\"Mikrotik: Log Automatico realizado em \$data as \$hora\" file=\"log-ccr-bft.txt\" body=\"Em anexo, log da CCR de Bofete realizado as \$hora de \$data.\""
/system script add dont-require-permissions=no name=scriptBackup owner=4networks policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon source=":foreach i in=[/file find] do={:if ([:typeof [:find [/file get \$i name] \"BACKUP-\"]]!=\"nil\") do={/file remove \$i}}\r\
    \n:log warning message=\"Removendo arquivos temporarios....\"\r\
    \n\r\
    \n\r\
    \n\r\
    \n\r\
    \n:log warning message=\"############################## \"\r\
    \n\r\
    \n:log warning message=\"4Networks - Backup via FTP \"\r\
    \n\r\
    \n:local saveUserDb false;     # Whether to save user database dump\r\
    \n:local saveSysBackup true;  # Whether to save overall system backup\r\
    \n:local encryptSysBackup false; # Whether to encrypt system backups (RouterOS 6.13 and higher) \r\
    \n:local saveRawExport true;  # Whether to export overall configuration as plain-text .rsc-script\r\
    \n\r\
    \n:local myFtp \"hulk.4networks.com.br\"\r\
    \n:local myFtpPort 21  \r\
    \n       \r\
    \n:local myFtpUser \"artnet\"     \r\
    \n:local myFtpPass \"123@artnet*backup\"\r\
    \n\r\
    \n:log warning message=\"Conectando ao Servidor FTP...\"\r\
    \n\r\
    \n\r\
    \n:local ts [/system clock get time]\r\
    \n:set ts ([:pick \$ts 0 2].[:pick \$ts 3 5].[:pick \$ts 6 8])\r\
    \n\r\
    \n:local ds [/system clock get date]\r\
    \n:set ds ([:pick \$ds 7 11].[:pick \$ds 0 3].[:pick \$ds 4 6])\r\
    \n\r\
    \n\r\
    \n:local fname (\"/BACKUP-\".[/system identity get name].\"-\".\$ds.\"-\".\$ts)\r\
    \n\r\
    \n\r\
    \n:if (\$saveUserDb) do={\r\
    \n  /tool user-manager database save name=(\$fname.\".umb\")\r\
    \n  :log warning message=\"BACKUP: User Manager: OK!\";\r\
    \n}\r\
    \n\r\
    \n\r\
    \n:if (\$saveSysBackup) do={\r\
    \n\t:if (\$encryptSysBackup) do={\r\
    \n  \t           /system backup save name=(\$fname.\".backup\");\r\
    \n              } else={\r\
    \n                     /system backup save name=(\$fname.\".backup\") dont-encrypt=yes;\r\
    \n               }\r\
    \n\t:log warning message=\"BACKUP: Sistema: OK!\";\r\
    \n}\r\
    \n\r\
    \nif (\$saveRawExport) do={\r\
    \n\t/export file=(\$fname.\".rsc\")\r\
    \n\t:log warning message=\"BACKUP: Configuracoes Exportadas: OK!\";\r\
    \n}\r\
    \n\r\
    \n\r\
    \n:if (\$saveUserDb) do={\r\
    \n\t/tool fetch address=\$myFtp port=\$myFtpPort src-path=(\$fname.\".umb\") user=\$myFtpUser mode=ftp password=\$myFtpPass dst-path=(\"mikrotik/\".\$fname.\".umb\") upload=yes;\r\
    \n               :log warning message=\"ENVIADO: User Manager: OK!\";\r\
    \n\r\
    \n}\r\
    \n\r\
    \n:if (\$saveSysBackup) do={\r\
    \n              :log warning message=\"ENVIANDO: Sistema...\";\r\
    \n\t/tool fetch address=\$myFtp port=\$myFtpPort src-path=(\$fname.\".backup\") user=\$myFtpUser mode=ftp password=\$myFtpPass dst-path=(\"mikrotik/\".\$fname.\".backup\") upload=yes;\r\
    \n  :log warning message=\"ENVIADO: Sistema: OK!\";\r\
    \n}\r\
    \n\r\
    \n:if (\$saveRawExport) do={\r\
    \n              :log warning message=\"ENVIANDO: Configuracoes Exportadas...\";\r\
    \n\t/tool fetch address=\$myFtp port=\$myFtpPort src-path=(\$fname.\".rsc\") user=\$myFtpUser mode=ftp password=\$myFtpPass dst-path=(\"mikrotik/\".\$fname.\".rsc\") upload=yes;\r\
    \n  :log warning message=\"ENVIADO: Configuracoes Exportadas: OK!\";\r\
    \n}\r\
    \n\r\
    \n\r\
    \n:foreach i in=[/file find] do={:if ([:typeof [:find [/file get \$i name] \"BACKUP-\"]]!=\"nil\") do={/file remove \$i}}\r\
    \n:log warning message=\"Removendo arquivos temporarios....\"\r\
    \n:log warning message=\"Backup via FTP concluido!\"\r\
    \n:log warning message=\"############################## \""
/system script add dont-require-permissions=no name=FTP owner=ppnetwork policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon source=":log warning \"***************************************\"\r\
    \n# Conex\E3o FTP\r\
    \n:global host 172.31.254.36\r\
    \n:global usuario artnet\r\
    \n:global senha 123@Mudar\r\
    \n:global diretorio /home/artnet\r\
    \n# Pega o nome do Router\r\
    \n:global identifica [/system identity get name ];\r\
    \n# Gera data no formato AAAA-MM-DD\r\
    \n:global data [/system clock get date]\r\
    \n:global meses (\"jan\",\"feb\",\"mar\",\"apr\",\"may\",\"jun\",\"jul\",\"aug\",\"sep\",\"oct\",\"nov\",\"dec\");\r\
    \n:global ano ([:pick \$data 7 11])\r\
    \n:global mestxt ([:pick \$data 0 3])\r\
    \n:global mm ([ :find \$meses \$mestxt -1 ] + 1);\r\
    \n:if (\$mm < 10) do={ :set mm (\"0\" . \$mm); }\r\
    \n:global mes ([:pick \$ds 7 11] . \$mm . [:pick \$ds 4 6])\r\
    \n:global dia ([:pick \$data 4 6])\r\
    \n:log info \"Gerando backup: \$ano-\$mes-\$dia.\$identifica.backup\";\r\
    \n/system backup save name=\"\$ano-\$mes-\$dia.\$identifica\";\r\
    \n:log info \"Gerando export: \$ano-\$mes-\$dia.\$identifica.rsc\";\r\
    \n/export file=\"\$ano-\$mes-\$dia.\$identifica\"\r\
    \n:log info \"Processando...\";\r\
    \n:delay 5s\r\
    \n:log info \"Conectando FTP Server...\";\r\
    \n:log info \"Enviando Backup [\$ano-\$mes-\$dia.\$identifica.backup] ...\";\r\
    \n/tool fetch address=\$host src-path=\"\$ano-\$mes-\$dia.\$identifica.backup\" user=\"\$usuario\" password=\"\$senha\" port=21 upload=yes mode=ftp dst-path=\"\$diretorio/\$ano-\$mes-\$dia.\$identifica.backup\"\r\
    \n:log info \"Enviando Export [\$ano-\$mes-\$dia.\$identifica.rsc] ...\";\r\
    \n/tool fetch address=\$host src-path=\"\$ano-\$mes-\$dia.\$identifica.rsc\" user=\"\$usuario\" password=\"\$senha\" port=21 upload=yes mode=ftp dst-path=\"\$diretorio/\$ano-\$mes-\$dia.\$identifica.rsc\"\r\
    \n:delay 1\r\
    \n:log info \"Backup enviado com sucesso...\";\r\
    \n:log info \"Removendo arquivos...\";\r\
    \n /file remove \"\$ano-\$mes-\$dia.\$identifica.backup\"\r\
    \n /file remove \"\$ano-\$mes-\$dia.\$identifica.rsc\"\r\
    \n:log info \"Rotina de backup finalizada...\";\r\
    \n:log warning \"***************************************\";"
/system script add dont-require-permissions=yes name=backup_dude_ftp owner=hemily policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon source=":log warning \"***************************************\"\r\
    \n# Conex\E3o FTP\r\
    \n:global host 168.228.185.133\r\
    \n:global diretorio /var/pure-ftpd/bkpdude\r\
    \n# Pega o nome do Router\r\
    \n:global identifica [/system identity get name];\r\
    \n# Adiciona nome The-Dude\r\
    \n:global name Dude-ARTNET\r\
    \n# Gera data no formato AAAA-MM-DD\r\
    \n:global data [/system clock get date]\r\
    \n:global meses (\"jan\",\"feb\",\"mar\",\"apr\",\"may\",\"jun\",\"jul\",\"aug\",\"sep\",\"oct\",\"nov\",\"dec\");\r\
    \n:global ano ([:pick \$data 7 11])\r\
    \n:global mestxt ([:pick \$data 0 3])\r\
    \n:global mm ([ :find \$meses \$mestxt -1 ] + 1);\r\
    \n:if (\$mm < 10) do={ :set mm (\"0\" . \$mm); }\r\
    \n:global mes ([:pick \$ds 7 11] . \$mm . [:pick \$ds 4 6])\r\
    \n:global dia ([:pick \$data 4 6])\r\
    \n:log info \"Gerando export: \$ano-\$mes-\$dia.\$identifica\";\r\
    \n/dude export-db backup-file=\"\$ano-\$mes-\$dia.\$identifica\"\r\
    \n:log info \"Processando...\";\r\
    \n:delay 5s\r\
    \n:log info \"Conectando FTP Server...\";\r\
    \n:log info \"Enviando Export [\$ano-\$mes-\$dia.\$identifica] ...\";\r\
    \n/tool fetch address=\$host src-path=\"\$ano-\$mes-\$dia.\$identifica\" user=bkpdude password=!@#bkpdude123 port=21 upload=yes mode=ftp dst-path=\"\$ano-\$mes-\$dia.\$identifica\"\r\
    \n:delay 1\r\
    \n:log info \"Export enviado com sucesso...\";\r\
    \n:log info \"Removendo arquivos...\";\r\
    \n /file remove \"\$ano-\$mes-\$dia.\$identifica\"\r\
    \n:log info \"Rotina de backup finalizada...\";\r\
    \n:log warning \"***************************************\";"
/system watchdog set watchdog-timer=no
/tool e-mail set address=mail.artnettelecom.com.br from=suporte@artnettelecom.com.br password=@#Bol192 port=465 user=suporte@artnettelecom.com.br
/tool graphing interface add
/tool graphing interface add interface=vlan2000 store-on-disk=no
/tool graphing queue add
/tool graphing resource add
/tool netwatch add comment="{IXCSoft Netwatch}" down-script="/ppp secret ; :foreach i in [ find comment~\"IXCSoft PPPOE\" ] do={ enable  \$i };" host=207.248.10.142 interval=5m up-script="/ppp secret ; :foreach i in [ find comment~\"IXCSoft PPPOE\" ] do={ disable \$i }; /ppp active; :foreach p in [find comment~\"IXCSoft\"] do={ remove \$p; :delay 1};"
/tool romon set enabled=yes
/tool romon port add disabled=no interface=sfp-sfpplus1
