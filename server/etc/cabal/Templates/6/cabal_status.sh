#!/bin/sh

echo -e "\n\033[0;33m..-----Status of CABAL Services-----..\033[0m"
/sbin/service crond status
/sbin/service DBAgent_01 status
/sbin/service GlobalDBAgent status
/sbin/service AuthDBAgent status
/sbin/service RockAndRollITS status
/sbin/service CashDBAgent status
/sbin/service GlobalMgrSvr status
/sbin/service EventDBAgent status
/sbin/service PartySvr_01 status
/sbin/service PCBangDBAgent status
/sbin/service ChatNode_01 status
/sbin/service EventMgrSvr status
/sbin/service LoginSvr_01 status
/sbin/service AgentShop_01 status
/sbin/service WorldSvr_01_01 status

