#!/bin/sh

echo -e "\n\033[0;31m..-----Shutting down CABAL Services-----..\033[0m"
/sbin/service crond stop
/sbin/service WorldSvr_01_16 stop
/sbin/service WorldSvr_01_15 stop
/sbin/service WorldSvr_01_14 stop
/sbin/service WorldSvr_01_13 stop
/sbin/service WorldSvr_01_12 stop
/sbin/service WorldSvr_01_11 stop
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

