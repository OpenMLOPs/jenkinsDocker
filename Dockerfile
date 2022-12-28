FROM jenkins/jenkins:lts-jdk11
USER root
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY requirements.txt requirements.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
RUN apt-get update
RUN apt-get install python3-pip -y
RUN apt-get install python3 -y
RUN pip install -r requirements.txt