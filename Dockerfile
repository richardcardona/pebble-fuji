FROM ubuntu:14.04
LABEL maintainer="Richard Cardona <richard@cardona.us>"
EXPOSE 8080
EXPOSE 8443
WORKDIR /root
RUN apt update
RUN apt-get -y install openjdk-7-jre-headless curl zip patch
RUN rm -f /etc/ssl/certs/DST_Root_CA_X3.pem
RUN curl -O https://archive.apache.org/dist/tomcat/tomcat-6/v6.0.53/bin/apache-tomcat-6.0.53.tar.gz -o pebble-2.6.4.zip 'https://master.dl.sourceforge.net/project/pebble/pebble/2.6.4/pebble-2.6.4.zip?viasf=1'
RUN tar xfz apache-tomcat-6.0.53.tar.gz
COPY tls apache-tomcat-6.0.53/conf/tls/
RUN unzip -p pebble-2.6.4.zip pebble-2.6.4/./pebble-2.6.4.war > apache-tomcat-6.0.53/webapps/pebble.war
ADD --chown=root:root start-pebble-app.sh /root
ENTRYPOINT ["/root/start-pebble-app.sh"]
