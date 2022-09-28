#!/bin/sh

/home/cabal/cabal_stop.sh

rm -f /etc/cabal/WorldSvr_01_01.ini
rm -f /etc/cabal/WorldSvr_01_02.ini
rm -f /etc/cabal/WorldSvr_01_03.ini
rm -f /etc/cabal/WorldSvr_01_04.ini
rm -f /etc/cabal/WorldSvr_01_05.ini
rm -f /etc/cabal/WorldSvr_01_06.ini
rm -f /etc/cabal/WorldSvr_01_07.ini
rm -f /etc/cabal/WorldSvr_01_08.ini
rm -f /etc/cabal/WorldSvr_01_09.ini
rm -f /etc/cabal/WorldSvr_01_10.ini
rm -f /etc/cabal/WorldSvr_01_11.ini
rm -f /etc/cabal/WorldSvr_01_12.ini
rm -f /etc/cabal/WorldSvr_01_13.ini
rm -f /etc/cabal/WorldSvr_01_14.ini
rm -f /etc/cabal/WorldSvr_01_15.ini
rm -f /etc/cabal/WorldSvr_01_16.ini

cp --force /etc/cabal/Templates/1/cabal_config.sh /home/cabal/cabal_config.sh
cp --force /etc/cabal/Templates/1/cabal_restart.sh /home/cabal/cabal_restart.sh
cp --force /etc/cabal/Templates/1/cabal_restartlog.sh /home/cabal/cabal_restartlog.sh
cp --force /etc/cabal/Templates/1/cabal_start.sh /home/cabal/cabal_start.sh
cp --force /etc/cabal/Templates/1/cabal_status.sh /home/cabal/cabal_status.sh
cp --force /etc/cabal/Templates/1/cabal_stop.sh /home/cabal/cabal_stop.sh
cp --force /etc/cabal/Templates/1/GlobalMgrSvr.ini /etc/cabal/GlobalMgrSvr.ini
cp --force /etc/cabal/Templates/1/server_list /etc/cabal/server_list

echo -e "\n*\033[1;36mChannel Template1 has been set!\033[0m"
echo ""

/home/cabal/cabal_config.sh

