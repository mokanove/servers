#!/bin/bash
echo "Do you want do this? It will you 80 443 2082 2052 8080 port is proxied and off your firewall."
echo "It will be off the firewall !"
echo "The project by https://github.com/sjlleo/netflix-verify/ and https://github.com/XIU2/CloudflareSpeedTest and https://www.speedtest.net/apps/cli"
echo "The author is not responsible for any consequences of using this code."
read -p "please input enter start install." a

sudo apt update 
sudo apt upgrade -y
sudo ufw allow 40000 80 443 81 2052 2082 8080
wget https://github.com/Kilumkothn/IPs/raw/main/depoly%20codes/proxy-cloudflare-IPs.sh && sh proxy-cloudflare-IPs.sh
wget https://github.com/Kilumkothn/IPs/raw/main/depoly%20codes/unlock-netflix-with-warp.sh && sh unlock-netflix-with-warp.sh
wget https://github.com/Kilumkothn/IPs/raw/main/depoly%20codes/cf-speedtest.sh && sh cf-speedtest.sh
sudo rm auto-config-a-server.sh cf-speedtest.sh unlock-netflix-with-warp.sh proxy-cloudflare-IPs.sh 
sudo apt-get update&&sudo apt-get remove speedtest&&sudo apt-get remove speedtest-cli 
echo "The script is compelet."
