#!/bin/bash
echo "The project by XIU2:https://github.com/XIU2/CloudflareSpeedTest"
echo "The first IP is best Cloudflare IP for this server."
echo "The author is not responsible for any consequences of using this code."
read -p "please input enter start install." a
wget https://github.com/XIU2/CloudflareSpeedTest/releases/download/v2.3.2/cfst_linux_amd64.tar.gz
tar -zxvf cfst_linux_amd64.tar.gz
rm ip.txt ipv6.txt cfst_hosts.sh 使用+错误+反馈说明.txt cfst_linux_amd64.tar.gz
wget -O ip.txt https://github.com/mokanove/servers/raw/refs/heads/main/CDNIPs/Cloudflare.txt
chmod 755 cfst
./cfst
echo "Your best Cloudflare IP is "$(awk -F',' 'NR==2 {print $1}' result.csv)
rm result.csv ip.txt cfst cf-speedtest.sh
echo "All Done!"
