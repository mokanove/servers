#!/bin/bash
echo "Do you want do this? It will you 80 443 2082 2052 8080 port is proxied and off your firewall."
echo "The author is not responsible for any consequences of using this code."
echo "The project with XIU2:https://github.com/XIU2/CloudflareSpeedTest"
echo "It will be off the firewall !"
read -p "Please input enter start install , or input ctrl+c to exit." a
ufw disable
sudo apt update && sudo apt upgrade -y && apt-get install iptables-persistent netfilter-persistent -y
wget https://github.com/XIU2/CloudflareSpeedTest/releases/download/v2.2.5/CloudflareST_linux_amd64.tar.gz
tar -zxvf CloudflareST_linux_amd64.tar.gz
rm CloudflareST_linux_amd64.tar.gz cfst_hosts.sh ip.txt ipv6.txt 使用+错误+反馈说明.txt
wget -O ip.txt https://raw.githubusercontent.com/Kilumkothn/IPs/refs/heads/main/CDNIPs/Cloudflare.txt
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
rm CloudflareST ip.txt result.csv proxy.sh
echo "The script is finished running, and the proxy CloudflareCDN has been successfully set up on port 80 443 2052 2082 8080."
