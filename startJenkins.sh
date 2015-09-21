docker create -v /var/jenkins_home --name jenkins-data jenkins
docker run --volumes-from jenkins-data --name jenkins -d -p 8080:8080 jenkins
