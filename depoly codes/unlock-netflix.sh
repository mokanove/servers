#!/bin/bash
echo "It work in 40000 port , so you need a x-ui config socks."
echo "Do you want install it? "
echo "The author is not responsible for any consequences of using this code."
read -p "please input enter start install." a
sudo apt update && sudo apt upgrade -y
sudo apt install curl gpg -y
curl -fsSL https://pkg.cloudflareclient.com/pubkey.gpg | sudo gpg --yes --dearmor --output /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/cloudflare-client.list
sudo apt-get update && sudo apt-get install cloudflare-warp -y
read -p "You need agree the lisense to next , please input enter and next." b
warp-cli registration new
warp-cli mode proxy
warp-cli connect
rm unlock-netflix.sh
