FROM rastasheep/ubuntu-sshd:14.04

#FROM jboss/wildfly:latest
#RUN uname -a
#RUN wget http://security.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.5_amd64.deb
#RUN sudo dpkg -i apt_1.5_amd64.deb
#RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin#007 --silent
#RUN /lib/wildfly/bin/add-user.sh admin Admin#007 --silent

ENV WILDFLY_VERSION 9.0.0.Final

RUN sudo apt-get update && apt-get install -y curl openjdk-7-jre-headless --no-install-recommends
RUN cd /opt && curl http://download.jboss.org/wildfly/$WILDFLY_VERSION/wildfly-$WILDFLY_VERSION.tar.gz | tar zx && mv /opt/wildfly-$WILDFLY_VERSION /opt/wildfly

ENV JBOSS_HOME /opt/wildfly

EXPOSE 8081
EXPOSE 9990
RUN /opt/wildfly/bin/add-user.sh admin test --silent 
CMD /usr/sbin/sshd && /opt/wildfly/bin/standalone.sh -b 0.0.0.0 -Djboss.http.port=8081 -b 0.0.0.0 -bmanagement 0.0.0.0 -Djboss.management.http.port=9990
