#!/bin/bash

# Create self-signed certificate
cd /root/apache-tomcat-6.0.53/conf/tls
/root/apache-tomcat-6.0.53/conf/tls/generate-localhost-cert.sh

# Patch server.xml for TLS configuration
/usr/bin/patch -d.. -p0 < server-xml-tls-patch.diff

# Start Tomcat with pebble application
cd /root
apache-tomcat-6.0.53/bin/startup.sh && tail -f /dev/null
