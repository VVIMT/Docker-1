#!/bin/sh

export FOO_BACKWARDS=$(echo 'foo' | rev)

wget https://files.teamspeak-services.com/releases/server/3.10.2/teamspeak3-server_linux_amd64-3.10.2.tar.bz2
tar -xf teamspeak3-server_linux_amd64-3.10.2.tar.bz2
mkdir /opt/teamspeak-server
mv teamspeak3-server_linux_amd64/* /opt/teamspeak-server
cd /opt/teamspeak-server
touch .ts3server_license_accepted

useradd -d /opt/teamspeak-server teamspeak-user
chown -R teamspeak-user:teamspeak-user /opt/teamspeak-server

#sudo ./ts3server_startscript.sh start | sleep 20s #>> key.txt | sleep 20s
#sudo ./ts3server_startscript.sh start createinifile=1  2>&1 | sudo tee -a key.txt | sleep 20s

sudo -u teamspeak-user ./ts3server_startscript.sh start serveradmin_password=123 | sleep infinity
