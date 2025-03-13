A router with multiple physical network interfaces can handle graceful failover of any subset of its physical network interfaces by taking advantage of NIC Bonding/NIC Teaming (which has several modes). Of particular note are:

- **Active-Backup mode** ([ab.yaml](ab.yaml))  
  - Can be used even if the physical network interfaces are **not** all connected to the same remote endpoint  
  - Provides automatic failover  

- **LACP (Link Aggregation Control Protocol) mode** ([lacp.yaml](lacp.yaml))  
  - Can only be used if the physical network interfaces **are** all connected to the same remote endpoint  
  - Remote endpoint must also implement the LACP protocol  
  - Provides bandwidth aggregation (and thus resilience to failure)  

For a modern Linux system with the `systemd-networkd` native service, the router configuration process involves:

1. Configuring the loading of the 'bonding' kernel driver module at start-up (pre-configured for modern Linux; otherwise: update /etc/modules; use `modprobe bonding` for on-demand) 
2. Installing NIC bonding utilities (e.g., netplan)
3. Configuring the bonded interfaces (e.g., /etc/netplan configuration file; `netplan apply`) 
4. Verifying the appropriate proc system file (e.g., `cat /proc/net/bonding/<bonded-interface>`)


Example netplan configuration files can be seen here:
- [ab.yaml](ab.yaml)
- [lacp.yaml](lacp.yaml)
