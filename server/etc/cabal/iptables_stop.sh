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
iptables -I INPUT  -p tcp --sport 1433 -j ACCEPT 
iptables -I INPUT  -p tcp --sport 80 -j ACCEPT 
iptables -I INPUT  -p tcp --sport 21 -j ACCEPT 
iptables -I INPUT  -p udp --sport 53 -j ACCEPT 
iptables -I INPUT  -p tcp --sport 123 -j ACCEPT 
iptables -I INPUT  -p udp --sport 123 -j ACCEPT 
iptables -I INPUT  -p tcp -m iprange --src-range 92.81.239.41-92.81.239.41 -j ACCEPT
iptables -I INPUT  -p tcp -m iprange --src-range 79.112.12.50-79.112.12.50 -j ACCEPT
#iptables -I INPUT  -p tcp -m iprange --src-range 91.205.41.90-91.205.41.90 -j ACCEPT
iptables -I INPUT  -p tcp -m iprange --src-range 31.3.246.178-31.3.246.181 -j ACCEPT
iptables -I INPUT  -p tcp -m iprange --src-range 127.0.0.1-127.0.0.1 -j ACCEPT
iptables -I INPUT -s -m iprange --src-range 192.168.0.1-192.168.255.255 -j DROP
iptables -I INPUT -s -m iprange --src-range 188.51.0.1-188.51.255.255 -j DROP
#echo "Block TCP-CONNECT scan attempts (SYN bit packets)"
iptables -A INPUT -p tcp --syn -j DROP
#echo "Block TCP-SYN scan attempts (only SYN bit packets)"
iptables -A INPUT -m conntrack --ctstate NEW -p tcp --tcp-flags SYN,RST,ACK,FIN,URG,PSH SYN -j DROP
#echo "Block TCP-FIN scan attempts (only FIN bit packets)"
iptables -A INPUT -m conntrack --ctstate NEW -p tcp --tcp-flags SYN,RST,ACK,FIN,URG,PSH FIN -j DROP
#echo "Block TCP-ACK scan attempts (only ACK bit packets)"
iptables -A INPUT -m conntrack --ctstate NEW -p tcp --tcp-flags SYN,RST,ACK,FIN,URG,PSH ACK -j DROP
#echo "Block TCP-NULL scan attempts (packets without flag)"
iptables -A INPUT -m conntrack --ctstate INVALID -p tcp --tcp-flags ! SYN,RST,ACK,FIN,URG,PSH SYN,RST,ACK,FIN,URG,PSH -j DROP
#echo "Block "Christmas Tree" TCP-XMAS scan attempts (packets with FIN, URG, PSH bits)"
iptables -A INPUT -m conntrack --ctstate NEW -p tcp --tcp-flags SYN,RST,ACK,FIN,URG,PSH FIN,URG,PSH -j DROP
iptables -I INPUT -p UDP -j DROP
iptables -I INPUT -p ICMP -j DROP
iptables -A INPUT -p tcp --tcp-flags ALL NONE -j DROP
iptables -A INPUT -p UDP -f -j DROP
#echo "Block DDOS - SYN-flood"
iptables -A INPUT -p TCP --syn -m connlimit --connlimit-above 9 -j DROP
echo "Block DDOS - Jolt"
iptables -A INPUT -p ICMP -f -j DROP
