# There are server config code , only for Ubuntu and Debian.

> Need root accept.



## check-netflix-unlock:

`wget https://github.com/Kilumkothn/IPs/raw/main/depoly%20codes/check-netflix-unlock.sh && sh check-netflix-unlock.sh`

Delete:

`rm check-netflix-unlock.sh&&rm nf`



## proxy-cloudflare-IPs.sh:

`wget https://github.com/Kilumkothn/IPs/raw/main/depoly%20codes/proxy-cloudflare-IPs.sh && sh proxy-cloudflare-IPs.sh`

Delete:

`rm proxy-cloudflare-IPs.sh`

Clean rules:

`iptables -t nat -F`



## speedtest-cli-ubuntu.sh:

```
wget https://github.com/Kilumkothn/IPs/raw/main/depoly%20codes/speedtest-cli-ubuntu.sh && sh speedtest-cli-ubuntu.sh
```

Delete:

```
sudo rm /etc/apt/sources.list.d/speedtest.list&&sudo apt-get update&&sudo apt-get remove speedtest&&sudo apt-get remove speedtest-cli&&rm speedtest-cli-ubuntu.sh
```



## unlock-netflix-with-warp.sh:

```
wget https://github.com/Kilumkothn/IPs/raw/main/depoly%20codes/unlock-netflix-with-warp.sh && sh unlock-netflix-with-warp.sh
```

Delete:

```
sudo rm /etc/apt/sources.list.d/cloudflare-client.list && sudo apt update && sudo apt remove warp-cli -y
```



# The author is not responsible for any consequences of using this code.