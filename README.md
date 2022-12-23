Requirement

1. Dockerized Jenkins Application
2. Jenkins should be able to build, push and create containers on dockerhub
   a. Issue 1: docker command not working? Solution: Add docker daemon socket as volume
   b. Issue 2: Unable to build, push and create containers on dockerhub. Solution: running jenkins as root user.

How to use the repository:

1. Install docker desktop on your system. For any issue please refer docker desktop community (https://docs.docker.com/desktop/install/windows-install)
2. Clone this repository.
3. To create image on docker desktop: docker build -t <user>\<imagename>:<tag>
4. To create container application: docker run -d -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/local/bin/docker -p 8081:8080 -p 50001:50000 --restart=on-failure --privileged shivgupta121/jenkins
5. To create container application: docker compose up (Skip if you have followed 3 & 4)
6. Jenkins application is ready for use: https: http://localhost:8080/
7. For setting up Jenkins, Follow jenkins documentation

Reference

1. https://www.jenkins.io/doc/book/installing/docker/#setup-wizard
2. https://www.srijn.net/docker-jobs-inside-jenkins-on-docker/
3. https://stackoverflow.com/questions/40506758/jenkins-docker-container-with-root-permissions
4. https://hackmamba.io/blog/2022/04/running-docker-in-a-jenkins-container/
5. https://forums.docker.com/t/using-docker-in-a-dockerized-jenkins-container/322/19
