# MikroTik-CHR-Automation
This repository contains the solution for the MikroTik Cloud Hosted Router (CHR) technical assessment. It demonstrates network security implementation, Hotspot gateway configuration, and automation using Ansible.
 Project Tasks Completed
1. Network Security (Firewall)
Objective: Block specific outbound traffic. 
Rule: Configured a firewall filter rule to drop all TCP traffic to destination IP 1.1.1.1 on port 443. 
2. Hotspot Gateway
Setup: Configured a functional Hotspot on the ether2 interface. 
Network: Assigned to the 192.168.88.0/24 subnet with a DHCP pool from .2 to .254. 
User Management: Created a local Hotspot user named "Umair". 
3. RADIUS Integration & Automation
RADIUS Client: Linked the Hotspot service to the RADIUS server at 35.227.71.209. 
Ansible Automation: Developed a playbook (RADIUS.yml) and inventory (hosts) to automate the deployment of the RADIUS client settings. 
Repository Contents
FinalConfig.rsc: The complete RouterOS configuration export. 
Firewall .png: Visual proof of the active firewall drop rule in Winbox. 
RADIUS.png: Visual proof of the RADIUS server configuration. 
RADIUS.yml: The Ansible playbook used for configuration management. 
hosts: The Ansible inventory file containing connection details for the router at 192.168.43.175
Technical Walkthrough (Audio)
[Click here to listen to the explanation of my configuration](/. presentation.mp3)
