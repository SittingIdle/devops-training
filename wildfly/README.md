
sudo docker build -t wildfly .

sudo docker run -p 1022:22 -p 8081:8081 --name wildfly wildfly
