#!/bin/bash
sudo iptables -t mangle -A POSTROUTING -j TTL --ttl-set 65
ping -4 -c1 localhost
