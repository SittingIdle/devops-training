FROM rastasheep/ubuntu-sshd:14.04

RUN apt-get update && apt-get install -y npm python --no-install-recommends
RUN npm install -g iojs zombie mocha

CMD /usr/sbin/sshd && bash
