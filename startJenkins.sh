docker create -v /var/jenkins_home --name jenkins-data busybox
docker run --volumes-from jenkins-data --name jenkins -v /var/jenkins_home -d -p 8080:8080 jenkins
