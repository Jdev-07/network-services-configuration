# Actualizar paquetes
sudo apt update
sudo apt upgrade 

# Instalar OpenSSH
sudo apt install openssh-server -y

# Instalar BIND9
sudo apt install bind9 bind9-utils bind9-doc 

# Netplan
cd /etc/netplan
sudo netplan apply

# Configuración BIND
cd /etc/bind
sudo cp named.conf.local named.conf.local.bkp
sudo cp named.conf.options named.conf.options.bkp
sudo cp db.local db.cloudtech.com
sudo cp db.127 db.inv4
sudo nano named.conf.options
sudo named-checkconf named.conf.options
sudo nano named.conf.local
sudo named-checkconf named.conf.local
sudo nano db.cloudtech.com
sudo named-checkzone cloudtech.com db.cloudtech.com
sudo nano db.inv4
sudo named-checkzone 0.16.172.in-addr.arpa db.inv4
sudo systemctl start bind9
sudo systemctl restart bind9
sudo systemctl status bind9

# Instalar DHCP
sudo apt install isc-dhcp-server
sudo cp /etc/default/isc-dhcp-server /etc/default/isc-dhcp-server.bkp 
sudo nano /etc/default/isc-dhcp-server
sudo cp /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.bkp
sudo nano /etc/dhcp/dhcpd.conf
sudo systemctl start isc-dhcp-server
sudo systemctl status isc-dhcp-server
sudo systemctl restart isc-dhcp-server

# Resolver
resolvectl status
sudo nano /etc/resolv.conf
