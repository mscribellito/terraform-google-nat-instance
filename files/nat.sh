#!/bin/bash

yum install iptables-services -y
systemctl enable iptables
systemctl start iptables

echo "net.ipv4.ip_forward=1" | tee -a /etc/sysctl.d/custom-ip-forwarding.conf
sysctl -p /etc/sysctl.d/custom-ip-forwarding.conf

iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
iptables -F FORWARD

service iptables save