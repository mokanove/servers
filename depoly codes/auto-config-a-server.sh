#!/bin/bash
echo "Do you want do this? It will you 80 443 2082 2052 8080 port is proxied and off your firewall."
echo "It will be off the firewall !"
echo "The project by https://github.com/sjlleo/netflix-verify/ and https://github.com/XIU2/CloudflareSpeedTest and https://www.speedtest.net/apps/cli"
echo "The author is not responsible for any consequences of using this code."
read -p "please input enter start install." a

sudo apt update 
sudo apt upgrade -y
ufw disable

echo "The script is compelet."
sudo rm auto-config-a-server.sh
