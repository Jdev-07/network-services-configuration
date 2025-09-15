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

### 🔹 Otros

- `50-cloud-init.yaml` → Configuración de red mediante Netplan (opcional).

---

## 🛠️ Pasos básicos de configuración

1. **Actualizar paquetes:**
   ```bash
sudo apt update && sudo apt upgrade -y
   ```


