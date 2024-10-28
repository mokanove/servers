#!/bin/bash
echo "The project by sjlleo:https://github.com/sjlleo/netflix-verify/"
echo "The author is not responsible for any consequences of using this code."
read -p "please input enter start install." a
wget -O nf https://github.com/sjlleo/netflix-verify/releases/download/v3.1.0/nf_linux_amd64 && chmod +x nf && ./nf
rm nf check-netflix.sh
