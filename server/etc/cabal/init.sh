for i in `netstat -an ¡¡ grep -i ¡®£º38101 ¡®¡¡grep ¡®EST¡¯ ¡¡ awk ¡®{print $5}¡¯ ¡¡ cut -d £º -f 1 ¡¡ sort ¡¡ uniq -c ¡¡ awk ¡®{if£¨$1 > 50£© {print $2}}¡¯` 
echo $i 
echo $i >> /tmp/banip 
/sbin/iptables -A INPUT -p tcp -j DROP -s $i 
done 