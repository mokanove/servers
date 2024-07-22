#!/bin/bash
echo "this command by speedtest offical website:https://www.speedtest.net/apps/cli"
echo "The author is not responsible for any consequences of using this code."
read -p "please input enter start install." a
echo "installing speedtest."
sudo apt-get install curl
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
sudo apt-get install speedtest
echo "input yes and next."
speedtest
