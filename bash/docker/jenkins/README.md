For Jenkins on port 9080 and slave on port 50000

docker build -t jenkins . --no-cache --tag  jenkins:2.107.1


For Jenkins on port 9080 and slave on port 59000 - another Jenkins instance

docker build . --file DockerfileJenkinWizard --no-cache --tag jenkinsw:2.107.1

