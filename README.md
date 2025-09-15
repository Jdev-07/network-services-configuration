# Configuración de DNS y DHCP en Ubuntu Server

Este repositorio contiene los **archivos de configuración** utilizados para levantar un servidor **DNS (BIND9)** y **DHCP** en Ubuntu Server.  
Incluye ejemplos de zona directa, zona inversa, configuraciones locales, opciones (forwarders) y el archivo de configuración de DHCP.

---

## 📂 Archivos incluidos

### 🔹 DNS (BIND9)
- `named.conf.local` → Define las zonas (directa e inversa).
- `named.conf.options` → Configuración global y forwarders.
- `db.cloudtech.com` → Zona directa (resolución de nombres a IP).
- `db.inv4` → Zona inversa (resolución de IP a nombres).

### 🔹 DHCP
- `dhcpd.conf` → Rango de direcciones, opciones de red y parámetros de clientes.
- `isc-dhcp-server` → Configuración de la interfaz en la que corre el servicio.

### 🔹 Otros
- `50-cloud-init.yaml` → Configuración de red mediante Netplan (opcional).

---

## 🛠️ Instalación de software necesario

Antes de usar los archivos de configuración, asegúrate de instalar el software en tu servidor Ubuntu:

```bash
# Actualizar paquetes
sudo apt update && sudo apt upgrade -y

# Instalar servidor SSH (opcional para acceso remoto)
sudo apt install openssh-server -y

# Instalar BIND9 (DNS)
sudo apt install bind9 bind9-utils bind9-doc -y

# Instalar ISC DHCP Server
sudo apt install isc-dhcp-server -y
```
