docker create --name jenkins-data jenkins
docker run -d \
          --volumes-from jenkins-data \
          --name jenkins \
          -p 8080:8080 \
          --link xld \
          --link xlr \
          jenkins
