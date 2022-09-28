#!/bin/sh

rm -f /var/log/cabal/*

countdown()
(
  IFS=:
  set -- $*
  secs=$(( ${1#0} * 3600 + ${2#0} * 60 + ${3#0} ))
  while [ $secs -gt 0 ]
  do
    sleep 1 &
echo -e -n "\033[1;33m"
    printf "\rWaiting for GlobalMgrSvr:			[ %02d:%02d:%02d ]" $((secs/3600)) $(( (secs/60)%60)) $((secs%60))
echo -e -n "\033[0m"
    secs=$(( $secs - 1 ))
    wait
  done
  echo
)

echo -e "\n\033[0;31m..-----Shutting down CABAL Services-----..\033[0m"
/sbin/service crond stop
/sbin/service WorldSvr_01_01 stop
/sbin/service AgentShop_01 stop
/sbin/service LoginSvr_01 stop
/sbin/service EventMgrSvr stop
/sbin/service ChatNode_01 stop
/sbin/service PCBangDBAgent stop
/sbin/service PartySvr_01 stop
/sbin/service EventDBAgent stop
/sbin/service GlobalMgrSvr stop
/sbin/service CashDBAgent stop
/sbin/service RockAndRollITS stop
/sbin/service AuthDBAgent stop
/sbin/service GlobalDBAgent stop
/sbin/service DBAgent_01 stop
echo -e "\n\033[0;32m..-----Starting up CABAL Services-----..\033[0m"
/sbin/service DBAgent_01 start
/sbin/service GlobalDBAgent start
/sbin/service AuthDBAgent start
sleep 1
/sbin/service RockAndRollITS start
/sbin/service CashDBAgent start
sleep 1
/sbin/service GlobalMgrSvr start
/sbin/service EventDBAgent start
/sbin/service PartySvr_01 start
/sbin/service PCBangDBAgent start
countdown "00:00:12" 
/sbin/service ChatNode_01 start
/sbin/service EventMgrSvr start
/sbin/service LoginSvr_01 start
/sbin/service AgentShop_01 start
/sbin/service WorldSvr_01_01 start
/sbin/service crond start

