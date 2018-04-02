docker create --name jenkins-data jenkins:2.60.3
docker run -d \
          --volumes-from jenkins-data \
          --name jenkins \
          -p 8080:8080 \
          jenkins:2.60.3

         # --link xld \
         # --link xlr \
