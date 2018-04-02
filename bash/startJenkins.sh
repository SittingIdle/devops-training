docker create --name jenkins-data jenkins:latest
docker run -d \
          --volumes-from jenkins-data \
          --name jenkins \
          -p 8080:8080 \
          jenkins:latest

         # --link xld \
         # --link xlr \
