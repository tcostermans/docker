# based on: https://github.com/twillouer/mydocker/blob/master/mysql/5.0/Dockerfile
# and http://txt.fliglio.com/2013/11/creating-a-mysql-docker-container/
FROM ubuntu:trusty
MAINTAINER William Delanoue, william.delanoue@gmail.com

RUN apt-get update && apt-get install -y wget mysql-client psmisc && apt-get autoclean

RUN wget http://downloads.mysql.com/archives/get/file/mysql-5.0.77-linux-i686.tar.gz  && tar xvzf mysql-5.0.77-linux-i686.tar.gz && rm mysql-5.0.77-linux-i686.tar.gz  

RUN mv mysql-5.0.* /usr/local/mysql

RUN groupadd mysql
RUN useradd mysql -g mysql -d /usr/local/mysql

RUN chown mysql.mysql -R /usr/local/mysql

ADD ./startup.sh /opt/startup.sh

# Expose mysql port
EXPOSE 3306


CMD ["/bin/bash", "/opt/startup.sh"]
