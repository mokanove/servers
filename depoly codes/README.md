# There are server config code , only for Ubuntu and Debian.

> Need root accept.
>
> And Ubuntu or debian operating system.

## proxy.sh:

> Proxy Cloudflare IP.

```
wget https://github.com/mokanove/servers/raw/main/depoly%20codes/proxy.sh &&sudo sh proxy.sh
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
>
> WARN: IT NOT SUPPORT UBUNTU24!

```
wget https://github.com/mokanove/servers/raw/main/depoly%20codes/speedtest.sh &&sudo sh speedtest.sh
```

Delete:

```
sudo rm /etc/apt/sources.list.d/ookla_speedtest-cli.list&&sudo apt-get remove speedtest speedtest-cli -y&&sudo apt-get update
```

------



# The author is not responsible for any consequences of using this code.
