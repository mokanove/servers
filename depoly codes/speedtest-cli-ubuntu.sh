#!/bin/bash
echo "this command by speedtest offical website:https://www.speedtest.net/apps/cli"
echo "The author is not responsible for any consequences of using this code."
read -p "please input enter start install." a
sudo rm /etc/apt/sources.list.d/speedtest.list
sudo apt-get update
sudo apt-get remove speedtest
sudo apt-get remove speedtest-cli
sudo apt-get install curl
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
sudo apt-get install speedtest
speedtest -YES
