#!/bin/sh

if [[ $EUID -ne 0 ]]; then
   echo "The cabal_config.sh script must be run as root." 1>&2
   exit 1
fi

	echo -e "\033[1;33mCABAL Server IP configuration.\033[37m"
	echo -ne "Enter MSSQL server IP: "
	read dbip
	
	sed /etc/cabal/Templates/ini/odbc.ini \
	-e "s/dbip/$dbip/g" \
	> /etc/odbc.ini.tmp
	mv /etc/odbc.ini.tmp /etc/odbc.ini


	echo -ne "Enter MSSQL server User: "
	read dbuser
	echo -ne "Enter MSSQL server Password: "
	read dbpw

	sed /etc/cabal/Templates/ini/AuthDBAgent.ini \
	-e "s/dbuser/$dbuser/g" \
	-e "s/dbpw/$dbpw/g" \
	> /etc/cabal/AuthDBAgent.ini.tmp
	mv /etc/cabal/AuthDBAgent.ini.tmp /etc/cabal/AuthDBAgent.ini

	sed /etc/cabal/Templates/ini/CashDBAgent.ini \
	-e "s/dbuser/$dbuser/g" \
	-e "s/dbpw/$dbpw/g" \
	> /etc/cabal/CashDBAgent.ini.tmp
	mv /etc/cabal/CashDBAgent.ini.tmp /etc/cabal/CashDBAgent.ini

	sed /etc/cabal/Templates/ini/DBAgent_01.ini \
	-e "s/dbuser/$dbuser/g" \
	-e "s/dbpw/$dbpw/g" \
	> /etc/cabal/DBAgent_01.ini.tmp
	mv /etc/cabal/DBAgent_01.ini.tmp /etc/cabal/DBAgent_01.ini

	sed /etc/cabal/Templates/ini/EventDBAgent.ini \
	-e "s/dbuser/$dbuser/g" \
	-e "s/dbpw/$dbpw/g" \
	> /etc/cabal/EventDBAgent.ini.tmp
	mv /etc/cabal/EventDBAgent.ini.tmp /etc/cabal/EventDBAgent.ini

	sed /etc/cabal/Templates/ini/GlobalDBAgent.ini \
	-e "s/dbuser/$dbuser/g" \
	-e "s/dbpw/$dbpw/g" \
	> /etc/cabal/GlobalDBAgent.ini.tmp
	mv /etc/cabal/GlobalDBAgent.ini.tmp /etc/cabal/GlobalDBAgent.ini

	sed /etc/cabal/Templates/ini/PCBangDBAgent.ini \
	-e "s/dbuser/$dbuser/g" \
	-e "s/dbpw/$dbpw/g" \
	> /etc/cabal/PCBangDBAgent.ini.tmp
	mv /etc/cabal/PCBangDBAgent.ini.tmp /etc/cabal/PCBangDBAgent.ini


	echo -ne "Enter IP for players to connect: "
	read cip

	sed /etc/cabal/Templates/16/WorldSvr_01_01.ini \
	-e "s/cip/$cip/g" \
	> /etc/cabal/WorldSvr_01_01.ini.tmp
	mv /etc/cabal/WorldSvr_01_01.ini.tmp /etc/cabal/WorldSvr_01_01.ini

	sed /etc/cabal/Templates/16/WorldSvr_01_02.ini \
	-e "s/cip/$cip/g" \
	> /etc/cabal/WorldSvr_01_02.ini.tmp
	mv /etc/cabal/WorldSvr_01_02.ini.tmp /etc/cabal/WorldSvr_01_02.ini

	sed /etc/cabal/Templates/16/WorldSvr_01_11.ini \
	-e "s/cip/$cip/g" \
	> /etc/cabal/WorldSvr_01_11.ini.tmp
	mv /etc/cabal/WorldSvr_01_11.ini.tmp /etc/cabal/WorldSvr_01_11.ini

	sed /etc/cabal/Templates/16/WorldSvr_01_12.ini \
	-e "s/cip/$cip/g" \
	> /etc/cabal/WorldSvr_01_12.ini.tmp
	mv /etc/cabal/WorldSvr_01_12.ini.tmp /etc/cabal/WorldSvr_01_12.ini

	sed /etc/cabal/Templates/16/WorldSvr_01_13.ini \
	-e "s/cip/$cip/g" \
	> /etc/cabal/WorldSvr_01_13.ini.tmp
	mv /etc/cabal/WorldSvr_01_13.ini.tmp /etc/cabal/WorldSvr_01_13.ini

	sed /etc/cabal/Templates/16/WorldSvr_01_14.ini \
	-e "s/cip/$cip/g" \
	> /etc/cabal/WorldSvr_01_14.ini.tmp
	mv /etc/cabal/WorldSvr_01_14.ini.tmp /etc/cabal/WorldSvr_01_14.ini

	sed /etc/cabal/Templates/16/WorldSvr_01_15.ini \
	-e "s/cip/$cip/g" \
	> /etc/cabal/WorldSvr_01_15.ini.tmp
	mv /etc/cabal/WorldSvr_01_15.ini.tmp /etc/cabal/WorldSvr_01_15.ini

	sed /etc/cabal/Templates/16/WorldSvr_01_16.ini \
	-e "s/cip/$cip/g" \
	> /etc/cabal/WorldSvr_01_16.ini.tmp
	mv /etc/cabal/WorldSvr_01_16.ini.tmp /etc/cabal/WorldSvr_01_16.ini

    echo -e "\e[0;31mRestart your CABAL Services!\e[0m"

