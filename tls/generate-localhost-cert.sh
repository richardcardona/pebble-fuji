#!/bin/bash
# Generate an untrusted self-signed certificate to enable TLS in Tomcat
/usr/bin/env openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout localhost.pem -out localhost.pem -config localhost.req -extensions v3_req

# Convert openssl PEM format to Java keystore PKCS#12 format
/usr/bin/env openssl pkcs12 -export -out localhost.p12 -in localhost.pem -inkey localhost.pem -passout 'pass:'
