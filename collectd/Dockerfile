FROM          ubuntu:latest
MAINTAINER    Charlie Revett <charlierevett@gmail.com>

ENV           DEBIAN_FRONTEND noninteractive

RUN           echo "deb http://us.archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list
RUN           echo "deb http://ppa.launchpad.net/vbulax/collectd5/ubuntu precise main" >> /etc/apt/sources.list
RUN           apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 232E4010A519D8D831B81C56C1F5057D013B9839
RUN           apt-get -y update
RUN           apt-get -y install collectd curl vim python-pip

ADD           configs/ /etc/collectd/configs

ADD           start /usr/bin/start

EXPOSE        8125

RUN           pip install envtpl
RUN           chmod +x /usr/bin/start

CMD           start