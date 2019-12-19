FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install -y sudo ca-certificates curl openssh-server postfix
#select 2 -> internet site
#enter root@192.168.99.100

RUN cd /tmp
RUN curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh

RUN sudo bash /tmp/script.deb.sh

RUN sudo apt-get install gitlab-ce -y

RUN apt update && apt install -y tzdata && \
	apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 22 80 443

ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && tail -f /dev/null
