#!/bin/bash
echo "this command by speedtest offical website:https://www.speedtest.net/apps/cli"
echo "The author is not responsible for any consequences of using this code."
read -p "please input enter start install." a
echo "installing speedtest."
sudo rm /etc/apt/sources.list.d/speedtest.list
sudo apt-get update
sudo apt-get install curl -y
sudo apt-get remove speedtest speedtest-cli -y
wget https://install.speedtest.net/app/cli/ookla-speedtest-1.2.0-linux-x86_64.tgz
tar -zxvf ookla-speedtest-1.2.0-linux-x86_64.tgz
rm speedtest.5 speedtest.md
read -p "please input enter to start speedtest and you need agree policy." a
speedtest
sudo apt-get remove speedtest -y
rm speedtest.sh
