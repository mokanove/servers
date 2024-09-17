#!/bin/bash
echo "Do you want do this? It will you 80 443 2082 2052 8080 port is proxied and off your firewall."
echo "If it can't use, please change "104.20.182.94" to others cloudflare offical IPs."
echo "The author is not responsible for any consequences of using this code."
echo "The project by XIU2:https://github.com/XIU2/CloudflareSpeedTest"
echo "It will be off the firewall !"
read -p "please input enter start install." a
ufw disable
sudo apt update && sudo apt upgrade -y && apt-get install iptables-persistent
wget https://github.com/Kilumkothn/IPs/raw/main/depoly%20codes/CloudflareST
wget https://s.867678.xyz/ip.txt
chmod 777 CloudflareST
./CloudflareST
CIP=$(awk -F',' 'NR==2 {print $1}' result.csv)
echo 1 > /proc/sys/net/ipv4/ip_forward
iptables -t nat -F
iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination $CIP:80
iptables -t nat -A PREROUTING -p tcp --dport 443 -j DNAT --to-destination $CIP:443
iptables -t nat -A PREROUTING -p tcp --dport 2082 -j DNAT --to-destination $CIP:2082
iptables -t nat -A PREROUTING -p tcp --dport 2052 -j DNAT --to-destination $CIP:2052
iptables -t nat -A PREROUTING -p tcp --dport 8080 -j DNAT --to-destination $CIP:8080
iptables -t nat -A POSTROUTING -p tcp -d $CIP --dport 80 -j MASQUERADE
iptables -t nat -A POSTROUTING -p tcp -d $CIP --dport 443 -j MASQUERADE
iptables -t nat -A POSTROUTING -p tcp -d $CIP --dport 2082 -j MASQUERADE
iptables -t nat -A POSTROUTING -p tcp -d $CIP --dport 2052 -j MASQUERADE
iptables -t nat -A POSTROUTING -p tcp -d $CIP --dport 8080 -j MASQUERADE
iptables -t nat -L -n -v
netfilter-persistent save
rm CloudflareST ip.txt
echo "The Script is compelet!"
