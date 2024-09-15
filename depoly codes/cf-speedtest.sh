#!/bin/bash
echo "The project by XIU2:https://github.com/XIU2/CloudflareSpeedTest"
echo "The first IP is best Cloudflare IP for this server."
echo "The author is not responsible for any consequences of using this code."
read -p "please input enter start install." a
wget https://github.com/Kilumkothn/IPs/raw/main/depoly%20codes/CloudflareST
wget https://s.867678.xyz/ip.txt
chmod 777 CloudflareST
./CloudflareST
echo "Your best Cloudflare IP is "$(awk -F',' 'NR==2 {print $1}' result.csv)
rm result.csv
echo "All Done!"
