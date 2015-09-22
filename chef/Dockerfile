FROM ubuntu:14.04

ADD myfile-delete.rb /tmp/myfile-delete.rb
ADD myfile.rb /tmp/myfile.rb
ADD webserver-full.rb /tmp/webserver-full.rb
ADD webserver-plain.rb /tmp/webserver-plain.rb


RUN apt-get update 
RUN apt-get install -y curl vim
RUN curl -L https://www.opscode.com/chef/install.sh | bash

WORKDIR /root
