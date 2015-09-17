docker stop logspout kibana logstash es
docker rm logspout kibana logstash es
docker run -it -d \
    -p 9200:9200 \
    -p 9300:9300 \
    --name es \
    ehazlett/elasticsearch
docker run -it -d \
    -p 5000:5000 \
    -p 5000:5000/udp \
    -v $(pwd)/logstash/logstash.conf:/etc/logstash.conf \
    --link es:elasticsearch \
    --name logstash \
    ehazlett/logstash -f /etc/logstash.conf
export LOGSTASH=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' logstash)
docker run -it -d \
    -p 80:80 \
    --name kibana \
    ehazlett/kibana
echo $LOGSTASH
docker run -d \
    -v /var/run/docker.sock:/tmp/docker.sock \
    --name logspout \
    progrium/logspout syslog://$LOGSTASH:5000

