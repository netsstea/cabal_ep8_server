iptables -F 
iptables -P INPUT ACCEPT 
iptables -I INPUT  -p tcp --dport 22 -m iprange --src-range 93.170.127.110-93.170.127.111 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 22 -m iprange --src-range 173.208.128.92-173.208.128.92 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 22 -m iprange --src-range 199.68.199.113-199.68.199.113 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 22 -m iprange --src-range 106.187.47.88-106.187.47.88 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 22 -m iprange --src-range 49.212.90.78-49.212.90.78 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 22 -m iprange --src-range 182.237.1.231-182.237.1.231 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 22 -m iprange --src-range 173.224.215.120-173.224.215.120 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 22 -m iprange --src-range 50.116.15.245-50.116.15.245 -j ACCEPT
iptables -I INPUT  -p tcp --dport 22 -m iprange --src-range 74.117.63.117-74.117.63.117 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 22 -m iprange --src-range 46.17.97.200-46.17.97.200 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 38170 -m iprange --src-range 173.208.128.92-173.208.128.92 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 38170 -m iprange --src-range 199.68.199.113-199.68.199.113 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 38170 -m iprange --src-range 106.187.47.88-106.187.47.88 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 38170 -m iprange --src-range 49.212.90.78-49.212.90.78 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 38170 -m iprange --src-range 182.237.1.231-182.237.1.231 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 38170 -m iprange --src-range 173.224.215.120-173.224.215.120 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 38170 -m iprange --src-range 74.117.63.117-74.117.63.117 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 38170 -m iprange --src-range 46.17.97.200-46.17.97.200 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 38101 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 38121 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 38151 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 38111 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 38112 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 38113 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 38114 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 38115 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 38116 -j ACCEPT
iptables -I INPUT  -p tcp --dport 38117 -j ACCEPT
iptables -I INPUT  -p tcp --dport 38126 -j ACCEPT
iptables -I INPUT  -p tcp --dport 38127 -j ACCEPT
#iptables -I INPUT  -p tcp --dport 38118 -j ACCEPT 
iptables -I INPUT  -p tcp --dport 38119 -j ACCEPT
iptables -I INPUT  -p tcp --dport 38120 -j ACCEPT
iptables -I INPUT  -p tcp --dport 38122 -j ACCEPT
#iptables -I INPUT  -p tcp --dport 38123 -j ACCEPT
#iptables -I INPUT  -p tcp --dport 38124 -j ACCEPT
#iptables -I INPUT  -p tcp --dport 38125 -j ACCEPT
#iptables -I INPUT  -p tcp --dport 38126 -j ACCEPT
iptables -I INPUT  -p tcp --sport 1433 -j ACCEPT 
iptables -I INPUT  -p tcp --sport 80 -j ACCEPT 
iptables -I INPUT  -p tcp --sport 21 -j ACCEPT 
iptables -I INPUT  -p udp --sport 53 -j ACCEPT 
iptables -I INPUT  -p tcp --sport 123 -j ACCEPT 
iptables -I INPUT  -p udp --sport 123 -j ACCEPT 
#iptables -I INPUT  -p tcp -m iprange --src-range 93.170.127.110-93.170.127.111 -j ACCEPT
#iptables -I INPUT  -p tcp -m iprange --src-range 91.205.41.44-91.205.41.44 -j ACCEPT
#iptables -I INPUT  -p tcp -m iprange --src-range 91.205.41.90-91.205.41.90 -j ACCEPT
iptables -I INPUT  -p tcp -m iprange --src-range 31.3.246.178-31.3.246.181 -j ACCEPT
iptables -I INPUT  -p tcp -m iprange --src-range 127.0.0.1-127.0.0.1 -j ACCEPT
iptables -I INPUT -s -m iprange --src-range 192.168.0.1-192.168.255.255 -j DROP
iptables -I INPUT -s -m iprange --src-range 188.51.0.1-188.51.255.255 -j DROP
iptables -I INPUT -s 2.88.0.0/14 -j DROP
iptables -I INPUT -s 46.29.80.0/21 -j DROP
iptables -I INPUT -s 46.44.64.0/18 -j DROP
iptables -I INPUT -s 46.52.0.0/17 -j DROP
iptables -I INPUT -s 46.152.0.0/15 -j DROP
iptables -I INPUT -s 62.3.0.0/21 -j DROP
iptables -I INPUT -s 62.3.8.0/23 -j DROP
iptables -I INPUT -s 62.3.28.0/22 -j DROP
iptables -I INPUT -s 62.3.33.0/20 -j DROP
iptables -I INPUT -s 62.3.49.0/21 -j DROP
iptables -I INPUT -s 62.3.57.0/23 -j DROP
iptables -I INPUT -s 62.3.59.0/24 -j DROP
iptables -I INPUT -s 62.3.63.0/24 -j DROP
iptables -I INPUT -s 62.120.0.0/16 -j DROP
iptables -I INPUT -s 62.149.64.0/18 -j DROP
iptables -I INPUT -s 63.103.137.0/24 -j DROP
iptables -I INPUT -s 63.103.139.0/26 -j DROP
iptables -I INPUT -s 64.39.23.112/29 -j DROP
iptables -I INPUT -s 64.131.88.8/29 -j DROP
iptables -I INPUT -s 64.182.62.57/29 -j DROP
iptables -I INPUT -s 65.17.227.64/27 -j DROP
iptables -I INPUT -s 65.17.243.128/26 -j DROP
iptables -I INPUT -s 65.38.168.32/28 -j DROP
iptables -I INPUT -s 65.38.185.192/28 -j DROP
iptables -I INPUT -s 66.110.32.0/21 -j DROP
iptables -I INPUT -s 66.178.4.144/29 -j DROP
iptables -I INPUT -s 66.178.20.176/28 -j DROP
iptables -I INPUT -s 66.178.20.208/29 -j DROP
iptables -I INPUT -s 66.178.21.24/26 -j DROP
iptables -I INPUT -s 66.178.21.88/29 -j DROP
iptables -I INPUT -s 66.178.21.128/27 -j DROP
iptables -I INPUT -s 66.178.22.72/29 -j DROP
iptables -I INPUT -s 66.178.22.192/27 -j DROP
iptables -I INPUT -s 66.178.22.248/29 -j DROP
iptables -I INPUT -s 66.178.23.32/27 -j DROP
iptables -I INPUT -s 66.178.23.80/28 -j DROP
iptables -I INPUT -s 66.178.23.112/28 -j DROP
iptables -I INPUT -s 66.178.23.192/27 -j DROP
iptables -I INPUT -s 66.178.24.96/26 -j DROP
iptables -I INPUT -s 66.178.24.160/27 -j DROP
iptables -I INPUT -s 66.178.24.192/28 -j DROP
iptables -I INPUT -s 66.178.24.248/27 -j DROP
iptables -I INPUT -s 66.178.25.24/29 -j DROP
iptables -I INPUT -s 66.178.25.128/28 -j DROP
iptables -I INPUT -s 66.178.28.0/25 -j DROP
iptables -I INPUT -s 66.178.28.128/28 -j DROP
iptables -I INPUT -s 66.178.28.160/28 -j DROP
iptables -I INPUT -s 66.178.28.192/25 -j DROP
iptables -I INPUT -s 66.178.29.64/26 -j DROP
iptables -I INPUT -s 66.178.29.192/26 -j DROP
iptables -I INPUT -s 66.178.43.0/24 -j DROP
iptables -I INPUT -s 66.178.57.40/28 -j DROP
iptables -I INPUT -s 66.178.57.64/29 -j DROP
iptables -I INPUT -s 66.178.57.112/29 -j DROP
iptables -I INPUT -s 66.178.57.128/29 -j DROP
iptables -I INPUT -s 66.178.57.144/28 -j DROP
iptables -I INPUT -s 66.178.57.160/29 -j DROP
iptables -I INPUT -s 66.178.60.0/24 -j DROP
iptables -I INPUT -s 66.178.62.18/32 -j DROP
iptables -I INPUT -s 66.178.62.40/29 -j DROP
iptables -I INPUT -s 66.178.64.0/27 -j DROP
iptables -I INPUT -s 66.178.64.64/24 -j DROP
iptables -I INPUT -s 66.178.65.64/26 -j DROP
iptables -I INPUT -s 66.178.65.128/29 -j DROP
iptables -I INPUT -s 66.178.65.160/27 -j DROP
iptables -I INPUT -s 66.178.68.0/23 -j DROP
iptables -I INPUT -s 66.178.84.32/26 -j DROP
iptables -I INPUT -s 66.178.84.96/28 -j DROP
iptables -I INPUT -s 66.178.89.0/24 -j DROP
iptables -I INPUT -s 66.178.90.136/29 -j DROP
iptables -I INPUT -s 66.178.90.192/27 -j DROP
iptables -I INPUT -s 66.178.90.224/28 -j DROP
iptables -I INPUT -s 66.178.90.248/29 -j DROP
iptables -I INPUT -s 66.178.121.96/29 -j DROP
iptables -I INPUT -s 69.20.47.128/29 -j DROP
iptables -I INPUT -s 69.20.78.80/29 -j DROP
iptables -I INPUT -s 69.24.241.12/30 -j DROP
iptables -I INPUT -s 76.12.42.112/29 -j DROP
iptables -I INPUT -s 76.12.73.104/29 -j DROP
iptables -I INPUT -s 76.12.138.16/28 -j DROP
iptables -I INPUT -s 76.12.157.96/29 -j DROP
iptables -I INPUT -s 77.30.0.0/15 -j DROP
iptables -I INPUT -s 77.64.0.0/17 -j DROP
iptables -I INPUT -s 77.73.192.0/21 -j DROP
iptables -I INPUT -s 77.87.16.0/21 -j DROP
iptables -I INPUT -s 77.95.216.0/23 -j DROP
iptables -I INPUT -s 77.95.218.0/24 -j DROP
iptables -I INPUT -s 77.95.221.0/23 -j DROP
iptables -I INPUT -s 77.95.223.0/24 -j DROP
iptables -I INPUT -s 77.110.64.0/20 -j DROP
iptables -I INPUT -s 77.221.96.0/19 -j DROP
iptables -I INPUT -s 77.232.96.0/19 -j DROP
iptables -I INPUT -s 77.240.80.0/20 -j DROP
iptables -I INPUT -s 77.240.128.0/20 -j DROP
iptables -I INPUT -s 78.93.0.0/16 -j DROP
iptables -I INPUT -s 78.110.0.0/20 -j DROP
iptables -I INPUT -s 78.138.192.0/18 -j DROP
iptables -I INPUT -s 79.98.184.0/21 -j DROP
iptables -I INPUT -s 79.170.0.0/21 -j DROP
iptables -I INPUT -s 79.170.48.0/21 -j DROP
iptables -I INPUT -s 79.172.128.0/18 -j DROP
iptables -I INPUT -s 80.74.80.0/20 -j DROP
iptables -I INPUT -s 80.78.141.0/24 -j DROP
iptables -I INPUT -s 80.84.129.192/29 -j DROP
iptables -I INPUT -s 80.92.55.16/28 -j DROP
iptables -I INPUT -s 80.92.55.40/28 -j DROP
iptables -I INPUT -s 80.92.55.56/29 -j DROP
iptables -I INPUT -s 80.120.196.216/29 -j DROP
iptables -I INPUT -s 80.231.85.0/24 -j DROP
iptables -I INPUT -s 80.240.64.0/20 -j DROP
iptables -I INPUT -s 81.16.208.0/20 -j DROP
iptables -I INPUT -s 81.21.48.0/20 -j DROP
iptables -I INPUT -s 81.95.151.32/29 -j DROP
iptables -I INPUT -s 81.95.151.64/29 -j DROP
iptables -I INPUT -s 82.118.65.176/28 -j DROP
iptables -I INPUT -s 82.118.160.0/19 -j DROP
iptables -I INPUT -s 82.147.192.0/19 -j DROP
iptables -I INPUT -s 82.167.0.0/19 -j DROP
iptables -I INPUT -s 82.167.32.0/21 -j DROP
iptables -I INPUT -s 82.167.40.0/23 -j DROP
iptables -I INPUT -s 82.167.42.0/25 -j DROP
iptables -I INPUT -s 82.167.42.128/26 -j DROP
iptables -I INPUT -s 82.167.42.193/17 -j DROP
iptables -I INPUT -s 82.167.170.193/21 -j DROP
iptables -I INPUT -s 82.167.178.193/22 -j DROP
iptables -I INPUT -s 82.167.182.193/27 -j DROP
iptables -I INPUT -s 82.167.182.225/28 -j DROP
iptables -I INPUT -s 82.167.182.241/29 -j DROP
iptables -I INPUT -s 82.167.182.249/30 -j DROP
iptables -I INPUT -s 82.167.182.253/31 -j DROP
iptables -I INPUT -s 82.167.182.255/32 -j DROP
iptables -I INPUT -s 82.167.184.0/18 -j DROP
iptables -I INPUT -s 82.167.248.0/21 -j DROP
iptables -I INPUT -s 82.205.147.64/28 -j DROP
iptables -I INPUT -s 82.205.159.64/27 -j DROP
iptables -I INPUT -s 82.205.209.0/27 -j DROP
iptables -I INPUT -s 82.205.209.32/28 -j DROP
iptables -I INPUT -s 82.205.211.0/27 -j DROP
iptables -I INPUT -s 82.205.211.80/28 -j DROP
iptables -I INPUT -s 82.205.211.144/28 -j DROP
iptables -I INPUT -s 82.205.212.32/27 -j DROP
iptables -I INPUT -s 82.205.216.0/23 -j DROP
iptables -I INPUT -s 82.205.218.96/28 -j DROP
iptables -I INPUT -s 82.205.218.160/27 -j DROP
iptables -I INPUT -s 82.205.219.48/28 -j DROP
iptables -I INPUT -s 82.205.219.144/28 -j DROP
iptables -I INPUT -s 82.205.219.192/27 -j DROP
iptables -I INPUT -s 82.205.220.0/24 -j DROP
iptables -I INPUT -s 82.205.221.16/27 -j DROP
iptables -I INPUT -s 82.205.221.64/27 -j DROP
iptables -I INPUT -s 82.205.222.0/27 -j DROP
iptables -I INPUT -s 82.205.222.32/28 -j DROP
iptables -I INPUT -s 82.205.225.0/24 -j DROP
iptables -I INPUT -s 82.205.226.112/28 -j DROP
iptables -I INPUT -s 82.205.229.0/24 -j DROP
iptables -I INPUT -s 82.205.239.64/28 -j DROP
iptables -I INPUT -s 82.205.255.0/24 -j DROP
iptables -I INPUT -s 82.206.165.16/28 -j DROP
iptables -I INPUT -s 82.206.170.192/27 -j DROP
iptables -I INPUT -s 82.206.170.224/28 -j DROP
iptables -I INPUT -s 82.206.170.240/29 -j DROP
iptables -I INPUT -s 82.206.170.248/30 -j DROP
iptables -I INPUT -s 82.206.170.252/31 -j DROP
iptables -I INPUT -s 82.206.170.254/32 -j DROP
iptables -I INPUT -s 83.101.128.0/17 -j DROP
iptables -I INPUT -s 83.136.8.96/27 -j DROP
iptables -I INPUT -s 84.22.224.0/19 -j DROP
iptables -I INPUT -s 84.23.96.0/19 -j DROP
iptables -I INPUT -s 84.235.0.0/18 -j DROP
iptables -I INPUT -s 84.235.64.0/19 -j DROP
iptables -I INPUT -s 84.235.104.0/20 -j DROP
iptables -I INPUT -s 84.235.120.0/21 -j DROP
iptables -I INPUT -s 85.129.128.0/18 -j DROP
iptables -I INPUT -s 85.129.192.0/21 -j DROP
iptables -I INPUT -s 85.129.200.0/24 -j DROP
iptables -I INPUT -s 85.129.201.0/27 -j DROP
iptables -I INPUT -s 85.129.201.32/31 -j DROP
iptables -I INPUT -s 85.129.201.36/19 -j DROP
iptables -I INPUT -s 85.129.233.36/20 -j DROP
iptables -I INPUT -s 85.129.249.36/22 -j DROP
iptables -I INPUT -s 85.129.253.36/23 -j DROP
iptables -I INPUT -s 85.129.255.36/25 -j DROP
iptables -I INPUT -s 85.129.255.164/26 -j DROP
iptables -I INPUT -s 85.129.255.228/28 -j DROP
iptables -I INPUT -s 85.129.255.244/29 -j DROP
iptables -I INPUT -s 85.129.255.252/30 -j DROP
iptables -I INPUT -s 85.194.64.0/18 -j DROP
iptables -I INPUT -s 85.208.0.0/15 -j DROP
iptables -I INPUT -s 85.237.128.0/19 -j DROP
iptables -I INPUT -s 86.51.0.0/16 -j DROP
iptables -I INPUT -s 86.60.0.0/17 -j DROP
iptables -I INPUT -s 86.62.1.40/29 -j DROP
iptables -I INPUT -s 86.62.1.64/29 -j DROP
iptables -I INPUT -s 86.111.192.0/21 -j DROP
iptables -I INPUT -s 87.101.128.0/17 -j DROP
iptables -I INPUT -s 87.109.0.0/16 -j DROP
iptables -I INPUT -s 87.230.128.0/17 -j DROP
iptables -I INPUT -s 87.237.226.0/23 -j DROP
iptables -I INPUT -s 87.238.118.0/24 -j DROP
iptables -I INPUT -s 87.238.119.0/25 -j DROP
iptables -I INPUT -s 87.238.119.128/26 -j DROP
iptables -I INPUT -s 87.238.119.192/27 -j DROP
iptables -I INPUT -s 87.238.119.224/28 -j DROP
iptables -I INPUT -s 87.238.119.240/29 -j DROP
iptables -I INPUT -s 87.238.119.248/30 -j DROP
iptables -I INPUT -s 87.238.119.252/31 -j DROP
iptables -I INPUT -s 87.238.119.254/32 -j DROP
iptables -I INPUT -s 88.81.0.0/19 -j DROP
iptables -I INPUT -s 88.84.96.0/19 -j DROP
iptables -I INPUT -s 88.85.224.0/19 -j DROP
iptables -I INPUT -s 88.151.136.0/21 -j DROP
iptables -I INPUT -s 88.213.0.0/17 -j DROP
iptables -I INPUT -s 89.4.0.0/15 -j DROP
iptables -I INPUT -s 89.108.0.0/19 -j DROP
iptables -I INPUT -s 89.108.32.0/20 -j DROP
iptables -I INPUT -s 89.108.48.0/21 -j DROP
iptables -I INPUT -s 89.108.56.0/23 -j DROP
iptables -I INPUT -s 89.108.59.0/22 -j DROP
iptables -I INPUT -s 89.108.63.0/24 -j DROP
iptables -I INPUT -s 89.144.64.0/18 -j DROP
iptables -I INPUT -s 89.147.0.0/18 -j DROP
iptables -I INPUT -s 89.188.64.0/19 -j DROP
iptables -I INPUT -s 89.189.224.0/19 -j DROP
iptables -I INPUT -s 89.237.128.0/18 -j DROP
iptables -I INPUT -s 90.148.0.0/16 -j DROP
iptables -I INPUT -s 91.102.16.0/21 -j DROP
iptables -I INPUT -s 91.102.33.0/24 -j DROP
iptables -I INPUT -s 91.142.55.128/26 -j DROP
iptables -I INPUT -s 91.142.59.128/25 -j DROP
iptables -I INPUT -s 91.147.128.0/18 -j DROP
iptables -I INPUT -s 91.151.149.0/24 -j DROP
iptables -I INPUT -s 91.151.157.0/24 -j DROP
iptables -I INPUT -s 91.151.160.0/20 -j DROP
iptables -I INPUT -s 91.195.88.0/23 -j DROP
iptables -I INPUT -s 91.197.200.0/22 -j DROP
iptables -I INPUT -s 91.198.62.0/24 -j DROP
iptables -I INPUT -s 91.198.102.0/24 -j DROP
iptables -I INPUT -s 91.198.251.0/24 -j DROP
iptables -I INPUT -s 91.199.107.0/24 -j DROP
iptables -I INPUT -s 91.199.187.0/24 -j DROP
iptables -I INPUT -s 91.206.134.0/23 -j DROP
iptables -I INPUT -s 91.207.12.0/23 -j DROP
iptables -I INPUT -s 91.208.4.0/24 -j DROP
iptables -I INPUT -s 91.208.128.0/24 -j DROP
iptables -I INPUT -s 91.208.156.0/24 -j DROP
iptables -I INPUT -s 91.209.215.0/24 -j DROP
iptables -I INPUT -s 91.209.253.0/24 -j DROP
iptables -I INPUT -s 91.212.67.0/24 -j DROP
iptables -I INPUT -s 91.213.18.0/24 -j DROP
iptables -I INPUT -s 91.213.205.0/24 -j DROP
iptables -I INPUT -s 91.213.213.0/24 -j DROP
iptables -I INPUT -s 91.221.22.0/23 -j DROP
iptables -I INPUT -s 92.43.168.0/21 -j DROP
iptables -I INPUT -s 92.48.0.0/18 -j DROP
iptables -I INPUT -s 93.98.0.0/16 -j DROP
iptables -I INPUT -s 93.122.65.16/28 -j DROP
iptables -I INPUT -s 93.178.0.0/18 -j DROP
iptables -I INPUT -s 93.189.96.0/21 -j DROP
iptables -I INPUT -s 93.189.192.0/21 -j DROP
iptables -I INPUT -s 94.77.192.0/18 -j DROP
iptables -I INPUT -s 94.96.0.0/15 -j DROP
iptables -I INPUT -s 94.98.0.0/20 -j DROP
iptables -I INPUT -s 94.98.16.0/22 -j DROP
iptables -I INPUT -s 94.98.20.0/23 -j DROP
iptables -I INPUT -s 94.98.22.0/24 -j DROP
iptables -I INPUT -s 94.98.24.0/16 -j DROP
iptables -I INPUT -s 94.99.24.0/17 -j DROP
iptables -I INPUT -s 94.99.152.0/18 -j DROP
iptables -I INPUT -s 94.99.216.0/19 -j DROP
iptables -I INPUT -s 94.99.248.0/21 -j DROP
iptables -I INPUT -s 94.143.224.0/21 -j DROP
iptables -I INPUT -s 95.129.8.0/21 -j DROP
iptables -I INPUT -s 95.154.243.0/24 -j DROP
iptables -I INPUT -s 109.82.0.0/15 -j DROP
iptables -I INPUT -s 109.171.128.0/17 -j DROP
iptables -I INPUT -s 114.198.232.0/24 -j DROP
iptables -I INPUT -s 114.198.239.0/24 -j DROP
iptables -I INPUT -s 166.87.0.0/15 -j DROP
iptables -I INPUT -s 167.111.0.0/16 -j DROP
iptables -I INPUT -s 173.192.198.0/24 -j DROP
iptables -I INPUT -s 178.20.144.0/21 -j DROP
iptables -I INPUT -s 178.73.64.0/18 -j DROP
iptables -I INPUT -s 178.236.228.1/24 -j DROP
iptables -I INPUT -s 178.236.229.1/27 -j DROP
iptables -I INPUT -s 188.48.0.0/13 -j DROP
iptables -I INPUT -s 188.117.64.0/18 -j DROP
iptables -I INPUT -s 188.119.64.0/18 -j DROP
iptables -I INPUT -s 188.132.0.0/17 -j DROP
iptables -I INPUT -s 188.138.29.128/27 -j DROP
iptables -I INPUT -s 188.139.0.0/17 -j DROP
iptables -I INPUT -s 188.231.38.24/29 -j DROP
iptables -I INPUT -s 188.231.38.80/26 -j DROP
iptables -I INPUT -s 188.231.38.152/29 -j DROP
iptables -I INPUT -s 188.231.92.16/28 -j DROP
iptables -I INPUT -s 188.231.93.8/28 -j DROP
iptables -I INPUT -s 188.231.93.32/27 -j DROP
iptables -I INPUT -s 188.231.93.72/29 -j DROP
iptables -I INPUT -s 188.248.0.0/16 -j DROP
iptables -I INPUT -s 188.249.0.0/17 -j DROP
iptables -I INPUT -s 188.249.128.0/18 -j DROP
iptables -I INPUT -s 188.249.192.0/19 -j DROP
iptables -I INPUT -s 188.249.224.0/23 -j DROP
iptables -I INPUT -s 188.249.227.0/14 -j DROP
iptables -I INPUT -s 188.253.227.0/15 -j DROP
iptables -I INPUT -s 188.255.227.0/20 -j DROP
iptables -I INPUT -s 188.255.243.0/21 -j DROP
iptables -I INPUT -s 188.255.251.0/22 -j DROP
iptables -I INPUT -s 188.255.255.0/24 -j DROP
iptables -I INPUT -s 192.203.227.0/24 -j DROP
iptables -I INPUT -s 192.251.61.0/22 -j DROP
iptables -I INPUT -s 192.251.65.0/24 -j DROP
iptables -I INPUT -s 193.19.90.0/23 -j DROP
iptables -I INPUT -s 193.19.189.0/23 -j DROP
iptables -I INPUT -s 193.19.191.0/24 -j DROP
iptables -I INPUT -s 193.22.249.0/24 -j DROP
iptables -I INPUT -s 193.23.180.0/24 -j DROP
iptables -I INPUT -s 193.27.7.0/24 -j DROP
iptables -I INPUT -s 193.28.9.0/23 -j DROP
iptables -I INPUT -s 193.28.94.0/24 -j DROP
iptables -I INPUT -s 193.29.50.0/24 -j DROP
iptables -I INPUT -s 193.37.143.0/24 -j DROP
iptables -I INPUT -s 193.42.215.0/24 -j DROP
iptables -I INPUT -s 193.42.220.0/24 -j DROP
iptables -I INPUT -s 193.47.102.0/24 -j DROP
iptables -I INPUT -s 193.104.40.0/24 -j DROP
iptables -I INPUT -s 193.104.204.0/24 -j DROP
iptables -I INPUT -s 193.105.89.0/24 -j DROP
iptables -I INPUT -s 193.109.218.0/24 -j DROP
iptables -I INPUT -s 193.142.222.0/24 -j DROP
iptables -I INPUT -s 193.169.190.0/23 -j DROP
iptables -I INPUT -s 193.188.1.0/23 -j DROP
iptables -I INPUT -s 193.188.3.0/24 -j DROP
iptables -I INPUT -s 193.188.14.0/20 -j DROP
iptables -I INPUT -s 193.188.30.0/23 -j DROP
iptables -I INPUT -s 193.188.200.0/24 -j DROP
iptables -I INPUT -s 193.200.247.0/24 -j DROP
iptables -I INPUT -s 193.227.127.0/24 -j DROP
iptables -I INPUT -s 194.0.15.0/24 -j DROP
iptables -I INPUT -s 194.36.164.0/24 -j DROP
iptables -I INPUT -s 194.50.35.0/24 -j DROP
iptables -I INPUT -s 194.105.148.0/23 -j DROP
iptables -I INPUT -s 194.110.72.0/24 -j DROP
iptables -I INPUT -s 194.117.110.116/30 -j DROP
iptables -I INPUT -s 194.117.116.100/30 -j DROP
iptables -I INPUT -s 194.117.119.3/32 -j DROP
iptables -I INPUT -s 194.117.119.13/32 -j DROP
iptables -I INPUT -s 194.117.119.39/32 -j DROP
iptables -I INPUT -s 194.117.119.70/32 -j DROP
iptables -I INPUT -s 194.117.119.82/32 -j DROP
iptables -I INPUT -s 194.126.231.0/24 -j DROP
iptables -I INPUT -s 194.154.194.192/28 -j DROP
iptables -I INPUT -s 194.165.42.0/24 -j DROP
iptables -I INPUT -s 195.10.197.0/24 -j DROP
iptables -I INPUT -s 195.14.19.0/24 -j DROP
iptables -I INPUT -s 195.34.68.0/23 -j DROP
iptables -I INPUT -s 195.43.137.0/24 -j DROP
iptables -I INPUT -s 195.47.234.0/24 -j DROP
iptables -I INPUT -s 195.66.100.0/24 -j DROP
iptables -I INPUT -s 195.85.224.0/24 -j DROP
iptables -I INPUT -s 195.88.244.0/23 -j DROP
iptables -I INPUT -s 195.112.185.88/32 -j DROP
iptables -I INPUT -s 195.114.106.0/23 -j DROP
iptables -I INPUT -s 195.130.206.0/24 -j DROP
iptables -I INPUT -s 195.149.65.0/24 -j DROP
iptables -I INPUT -s 195.149.71.0/24 -j DROP
iptables -I INPUT -s 195.149.91.0/24 -j DROP
iptables -I INPUT -s 195.170.180.0/24 -j DROP
iptables -I INPUT -s 195.177.194.0/23 -j DROP
iptables -I INPUT -s 195.182.31.0/24 -j DROP
iptables -I INPUT -s 195.189.212.0/23 -j DROP
iptables -I INPUT -s 195.191.6.0/23 -j DROP
iptables -I INPUT -s 195.219.153.0/24 -j DROP
iptables -I INPUT -s 195.219.167.0/24 -j DROP
iptables -I INPUT -s 195.242.177.0/24 -j DROP
iptables -I INPUT -s 195.242.188.0/24 -j DROP
iptables -I INPUT -s 195.242.196.0/22 -j DROP
iptables -I INPUT -s 195.246.104.0/23 -j DROP
iptables -I INPUT -s 196.1.3.0/24 -j DROP
iptables -I INPUT -s 196.1.6.0/24 -j DROP
iptables -I INPUT -s 196.1.64.0/22 -j DROP
iptables -I INPUT -s 196.3.66.0/24 -j DROP
iptables -I INPUT -s 196.15.32.0/19 -j DROP
iptables -I INPUT -s 198.11.0.0/22 -j DROP
iptables -I INPUT -s 198.36.32.0/21 -j DROP
iptables -I INPUT -s 198.36.40.0/22 -j DROP
iptables -I INPUT -s 198.36.45.0/24 -j DROP
iptables -I INPUT -s 198.51.12.0/24 -j DROP
iptables -I INPUT -s 204.12.36.72/29 -j DROP
iptables -I INPUT -s 204.12.47.208/29 -j DROP
iptables -I INPUT -s 204.232.180.64/29 -j DROP
iptables -I INPUT -s 205.214.69.120/28 -j DROP
iptables -I INPUT -s 205.214.69.160/29 -j DROP
iptables -I INPUT -s 205.214.70.144/28 -j DROP
iptables -I INPUT -s 205.214.73.40/28 -j DROP
iptables -I INPUT -s 205.214.74.168/27 -j DROP
iptables -I INPUT -s 205.214.82.48/28 -j DROP
iptables -I INPUT -s 205.214.82.64/29 -j DROP
iptables -I INPUT -s 205.214.82.120/27 -j DROP
iptables -I INPUT -s 205.214.82.152/29 -j DROP
iptables -I INPUT -s 205.214.82.192/28 -j DROP
iptables -I INPUT -s 205.214.82.208/29 -j DROP
iptables -I INPUT -s 205.214.83.152/28 -j DROP
iptables -I INPUT -s 205.214.83.168/29 -j DROP
iptables -I INPUT -s 205.214.85.64/26 -j DROP
iptables -I INPUT -s 205.214.85.128/28 -j DROP
iptables -I INPUT -s 205.214.89.64/29 -j DROP
iptables -I INPUT -s 205.214.89.208/29 -j DROP
iptables -I INPUT -s 205.214.92.72/29 -j DROP
iptables -I INPUT -s 205.214.93.208/29 -j DROP
iptables -I INPUT -s 205.214.94.96/29 -j DROP
iptables -I INPUT -s 206.72.118.168/29 -j DROP
iptables -I INPUT -s 206.214.219.101/30 -j DROP
iptables -I INPUT -s 206.214.221.165/30 -j DROP
iptables -I INPUT -s 206.222.22.176/29 -j DROP
iptables -I INPUT -s 207.58.146.64/28 -j DROP
iptables -I INPUT -s 209.50.238.176/29 -j DROP
iptables -I INPUT -s 209.197.224.128/29 -j DROP
iptables -I INPUT -s 209.197.224.176/29 -j DROP
iptables -I INPUT -s 209.197.226.104/25 -j DROP
iptables -I INPUT -s 209.197.226.232/29 -j DROP
iptables -I INPUT -s 212.11.160.0/19 -j DROP
iptables -I INPUT -s 212.12.160.0/23 -j DROP
iptables -I INPUT -s 212.12.162.0/28 -j DROP
iptables -I INPUT -s 212.12.162.24/22 -j DROP
iptables -I INPUT -s 212.12.166.24/24 -j DROP
iptables -I INPUT -s 212.12.167.24/25 -j DROP
iptables -I INPUT -s 212.12.167.152/26 -j DROP
iptables -I INPUT -s 212.12.167.216/27 -j DROP
iptables -I INPUT -s 212.12.167.248/29 -j DROP
iptables -I INPUT -s 212.12.169.0/20 -j DROP
iptables -I INPUT -s 212.12.185.0/22 -j DROP
iptables -I INPUT -s 212.12.189.0/23 -j DROP
iptables -I INPUT -s 212.12.191.0/24 -j DROP
iptables -I INPUT -s 212.24.224.0/19 -j DROP
iptables -I INPUT -s 212.26.0.0/17 -j DROP
iptables -I INPUT -s 212.33.160.0/19 -j DROP
iptables -I INPUT -s 212.46.32.0/19 -j DROP
iptables -I INPUT -s 212.57.192.0/19 -j DROP
iptables -I INPUT -s 212.62.96.0/19 -j DROP
iptables -I INPUT -s 212.63.180.52/30 -j DROP
iptables -I INPUT -s 212.63.180.240/30 -j DROP
iptables -I INPUT -s 212.70.32.0/19 -j DROP
iptables -I INPUT -s 212.71.32.0/19 -j DROP
iptables -I INPUT -s 212.76.64.0/19 -j DROP
iptables -I INPUT -s 212.93.160.0/18 -j DROP
iptables -I INPUT -s 212.100.192.0/19 -j DROP
iptables -I INPUT -s 212.102.0.0/19 -j DROP
iptables -I INPUT -s 212.107.96.0/19 -j DROP
iptables -I INPUT -s 212.116.192.0/19 -j DROP
iptables -I INPUT -s 212.118.96.0/18 -j DROP
iptables -I INPUT -s 212.119.64.0/19 -j DROP
iptables -I INPUT -s 212.124.246.160/29 -j DROP
iptables -I INPUT -s 212.138.0.0/16 -j DROP
iptables -I INPUT -s 212.162.128.0/19 -j DROP
iptables -I INPUT -s 212.215.128.0/17 -j DROP
iptables -I INPUT -s 213.5.168.0/21 -j DROP
iptables -I INPUT -s 213.33.80.0/28 -j DROP
iptables -I INPUT -s 213.33.112.40/27 -j DROP
iptables -I INPUT -s 213.33.112.72/28 -j DROP
iptables -I INPUT -s 213.33.112.88/29 -j DROP
iptables -I INPUT -s 213.33.113.128/29 -j DROP
iptables -I INPUT -s 213.136.192.0/19 -j DROP
iptables -I INPUT -s 213.165.32.0/19 -j DROP
iptables -I INPUT -s 213.166.128.0/19 -j DROP
iptables -I INPUT -s 213.181.160.0/19 -j DROP
iptables -I INPUT -s 213.184.160.0/19 -j DROP
iptables -I INPUT -s 213.210.192.0/18 -j DROP
iptables -I INPUT -s 213.230.0.0/19 -j DROP
iptables -I INPUT -s 213.236.32.0/19 -j DROP
iptables -I INPUT -s 216.7.170.8/29 -j DROP
iptables -I INPUT -s 216.38.49.192/30 -j DROP
iptables -I INPUT -s 216.38.50.174/30 -j DROP
iptables -I INPUT -s 216.128.47.0/24 -j DROP
iptables -I INPUT -s 216.236.208.64/27 -j DROP
iptables -I INPUT -s 216.236.208.128/26 -j DROP
iptables -I INPUT -s 216.236.209.0/29 -j DROP
iptables -I INPUT -s 217.8.64.0/20 -j DROP
iptables -I INPUT -s 217.12.224.0/20 -j DROP
iptables -I INPUT -s 217.69.22.128/26 -j DROP
iptables -I INPUT -s 217.145.240.0/20 -j DROP
iptables -I INPUT -s 217.173.80.0/20 -j DROP
iptables -I INPUT -s 95.223.118.169 -j DROP
iptables -I INPUT -s 121.54.71.140 -j DROP
iptables -I INPUT -s 74.115.7.14 -j DROP