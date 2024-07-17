#!/bin/bash
echo "Do you want do this? It will you 80 443 2082 2052 8080 port is opened."
echo "If it can't use, please change "104.20.182.94" to others cloudflare offical IPs."
echo "The author is not responsible for any consequences of using this code."
read -p "please input enter start install." a
echo 1 > /proc/sys/net/ipv4/ip_forward
iptables -t nat -F
iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination 104.20.182.94:80
iptables -t nat -A PREROUTING -p tcp --dport 443 -j DNAT --to-destination 104.20.182.94:443
iptables -t nat -A PREROUTING -p tcp --dport 2082 -j DNAT --to-destination 104.20.182.94:2082
iptables -t nat -A PREROUTING -p tcp --dport 2052 -j DNAT --to-destination 104.20.182.94:2052
iptables -t nat -A PREROUTING -p tcp --dport 8080 -j DNAT --to-destination 104.20.182.94:8080
iptables -t nat -A POSTROUTING -p tcp -d 104.20.182.94 --dport 80 -j MASQUERADE
iptables -t nat -A POSTROUTING -p tcp -d 104.20.182.94 --dport 443 -j MASQUERADE
iptables -t nat -A POSTROUTING -p tcp -d 104.20.182.94 --dport 2082 -j MASQUERADE
iptables -t nat -A POSTROUTING -p tcp -d 104.20.182.94 --dport 2052 -j MASQUERADE
iptables -t nat -A POSTROUTING -p tcp -d 104.20.182.94 --dport 8080 -j MASQUERADE
iptables -t nat -L -n -v
