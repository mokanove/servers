# There are server config code , only for Ubuntu and Debian.

> Need root accept.
>
> And Ubuntu or debian operating system.

## config.sh

> Using it, you can configure a server with the same functions as the home page.

```
wget https://github.com/Kilumkothn/IPs/raw/main/depoly%20codes/config.sh &&sudo sh config.sh
```

Delete:
```
iptables -t nat -F&&sudo rm /etc/apt/sources.list.d/cloudflare-client.list && sudo apt update && sudo apt remove warp-cli -y
```

------

## cf-speedtest.sh:

> Check the best Cloudflare CDN IP in this server.

```
wget https://github.com/Kilumkothn/IPs/raw/main/depoly%20codes/cf-speedtest.sh &&sudo sh cf-speedtest.sh
```

Delete:

```
sudo rm cf-speedtest.sh CloudflareST ip.txt result.csv
```

------

## proxy.sh:

> Proxy Cloudflare IP.

```
wget https://github.com/Kilumkothn/IPs/raw/main/depoly%20codes/proxy.sh &&sudo sh proxy.sh
```

Delete:

```
rm proxy.sh
```

Delete Iptables rules:

```
iptables -t nat -F
```

------

## speedtest.sh:

> Use the official Speed test tool to test the server speed.

```
wget https://github.com/Kilumkothn/IPs/raw/main/depoly%20codes/speedtest.sh &&sudo sh speedtest.sh
```

Delete:

```
sudo rm /etc/apt/sources.list.d/ookla_speedtest-cli.list&&sudo apt-get remove speedtest speedtest-cli -y&&sudo apt-get update
```

------

## check-Netflix:

> Use a third-party tool to check Netflix unblocking status.

```
wget https://github.com/Kilumkothn/IPs/raw/main/depoly%20codes/check-netflix.sh &&sudo sh check-netflix.sh
```

Delete:

```
rm check-netflix.sh&&rm nf
```

------

## unlock-netflix.sh:

> If your server does not support unblocking Netflix, you can try using Cloudflare's free VPN service warp to unblock it.

```
wget https://github.com/Kilumkothn/IPs/raw/main/depoly%20codes/unlock-netflix.sh &&sudo sh unlock-netflix.sh
```

Delete:

```
sudo rm /etc/apt/sources.list.d/cloudflare-client.list && sudo apt update && sudo apt remove cloudflare-warp -y&& rm unlock-netflix.sh
```



# The author is not responsible for any consequences of using this code.
