FROM debian:latest
RUN apt-get update -y \
apt-get install wget bzip2 -y
wget http://dl.4players.de/ts/releases/3.0.13.8/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2
tar xfvj teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2
cd teamspeak3-server_linux_amd64
./ts3server_startscript.sh start


TeamSpeak
ENTRYPOINT ["TeamSpeak"]

