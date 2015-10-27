docker rm nginx
docker run -d \
          -v ./nginx/nginx.conf:/etc/nginx/nginx.conf:ro \
          --name nginx \
          -p 80:80 \
          --link xld \
          --link xlr \
          --link jenkins \
          --link mocha \
          --link wildfly-qa \
          --link wildfly-pr \
          nginx
