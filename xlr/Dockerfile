FROM debian

MAINTAINER Adriaan de Jonge <adejonge@xebia.com>

ENV version 4.5.2
RUN apt-get update
RUN apt-get install -y openjdk-7-jre-headless unzip wget --no-install-recommends


RUN wget https://download.xebialabs.com/files/Generic/xl-release-${version}-server.zip -O /tmp/xld.zip && unzip /tmp/xlr.zip -d /opt && rm /tmp/xlr.zip
#ADD xlrelease.answers /opt/xl-release-${version}-server-free-edition/bin/xlrelease.answers

#WORKDIR /opt/xl-release-${version}-server-free-edition/bin
#RUN ["./run.sh", "-setup", "-reinitialize", "-force", "-setup-defaults", "./bin/xlrelease.answers"]

#VOLUME /opt/xl-release-${version}-server-free-edition/conf
#VOLUME /opt/xl-release-${version}-server-free-edition/ext
#VOLUME /opt/xl-release-${version}-server-free-edition/hotfix
#VOLUME /opt/xl-release-${version}-server-free-edition/importablePackages
#VOLUME /opt/xl-release-${version}-server-free-edition/log
#VOLUME /opt/xl-release-${version}-server-free-edition/plugins
#VOLUME /opt/xl-release-${version}-server-free-edition/repository

#EXPOSE 4516

#CMD ["./run.sh"]
