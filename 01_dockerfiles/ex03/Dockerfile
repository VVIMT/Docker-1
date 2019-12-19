FROM ubuntu:18.04

RUN apt update -y && apt upgrade -y && apt install -y sudo ufw ca-certificates curl openssh-server

RUN cd /tmp
RUN sudo curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh
RUN chmod +x script.deb.sh
RUN ./script.deb.sh
RUN apt install gitlab-ce -y

RUN apt update -y && apt install -y tzdata && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 22 80 443

ADD https://gist.githubusercontent.com/rizkyario/bc236974f3b0c9ce60cdb722bf12a702/raw/634df1395ab9c4187250b81d1c4a38e7e0934779/gitlab-entrypoint.sh /entrypoint.sh

#RUN /opt/gitlab/embedded/bin/runsvdir-start& \
#    EXTERNAL_URL="https://localhost" && gitlab-ctl reconfigure \
#    tail -f /dev/null

CMD ./entrypoint.sh

