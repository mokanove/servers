#!/bin/bash
echo "Do you want do this? It will you 80 443 2082 2052 8080 port is proxied and off your firewall."
echo "It will be off the firewall !"
echo "The project by https://github.com/sjlleo/netflix-verify/ and https://github.com/XIU2/CloudflareSpeedTest and https://www.speedtest.net/apps/cli"
echo "The author is not responsible for any consequences of using this code."
read -p "please input enter start install." a
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
sudo apt update && sudo apt upgrade -y
sudo apt install curl gpg -y
curl -fsSL https://pkg.cloudflareclient.com/pubkey.gpg | sudo gpg --yes --dearmor --output /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/cloudflare-client.list
sudo apt-get update && sudo apt-get install cloudflare-warp -y
read -p "You need agree the lisense to next , please input enter and next." b
warp-cli registration new -y
warp-cli mode proxy&&warp-cli connect
sudo apt-get install curl
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
sudo apt-get install speedtest
echo "You need agree the lisense to next , please input YES and next."
speedtest
sudo apt remove speedtest-cli -y
sudo apt-get purge speedtest-cli -y
sudo apt autoremove -y
sudo apt-get clean -y
echo "The script is compelet."
