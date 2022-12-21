FROM ubuntu:14.04
MAINTAINER richard@cardona.us
EXPOSE 8080
WORKDIR /root
RUN apt update
RUN apt-get -y install openjdk-7-jre-headless curl zip
RUN curl -k -O https://archive.apache.org/dist/tomcat/tomcat-6/v6.0.53/bin/apache-tomcat-6.0.53.tar.gz -O https://versaweb.dl.sourceforge.net/project/pebble/pebble/2.6.4/pebble-2.6.4.zip
RUN tar xfz apache-tomcat-6.0.53.tar.gz
RUN unzip -p pebble-2.6.4.zip pebble-2.6.4/./pebble-2.6.4.war > apache-tomcat-6.0.53/webapps/pebble.war
CMD apache-tomcat-6.0.53/bin/startup.sh && tail -f /dev/null
