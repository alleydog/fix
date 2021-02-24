#!/bin/bash
ping -4 -c1 localhost
sudo iptables -t mangle -A POSTROUTING -j TTL --ttl-set 65
ping -4 -c1 localhost
