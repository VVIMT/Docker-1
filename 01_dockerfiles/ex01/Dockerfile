FROM debian:9
COPY install_TS3.sh /
EXPOSE 9987/udp
EXPOSE 30033
EXPOSE 10011

RUN apt-get update -y
RUN apt-get install sudo apt-utils wget bzip2 -y

ENTRYPOINT ["/install_TS3.sh"]

#docker build -t ex01 .
#docker run -it -p 9987:9987/udp -p 10011:10011 -p 30033:30033 ex01
