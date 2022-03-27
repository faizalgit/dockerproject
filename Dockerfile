FROM debian

MAINTAINER aksarav@middlewareinventory.com

RUN apt-get update && apt-get install -y \
curl
RUN /bin/bash
RUN apt-get install tar -y
RUN apt install default-jdk -y
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
ENV PATH $PATH:$JAVA_HOME/bin
RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN /usr/bin/curl -O https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.77/bin/apache-tomcat-8.5.77.tar.gz 
RUN tar -xvf apache*.tar.gz
RUN mv apache-tomcat-8.5.77/* /opt/tomcat/.
WORKDIR /opt/tomcat/webapps
RUN /usr/bin/curl -O -L https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war
EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]