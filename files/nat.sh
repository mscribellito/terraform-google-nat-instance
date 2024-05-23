#!/bin/bash

sysctl -w net.ipv4.ip_forward=1

iptables -t nat -A POSTROUTING -o ens4 -j MASQUERADE
iptables -F FORWARD

iptables-save