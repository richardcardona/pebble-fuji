# pebble
 Pebble Fuji docker image, a target-rich web application for security reviews

Re-built on docker desktop 4.15.0 using

* >docker buildx create --use
* >docker buildx build --platform linux/amd64,linux/arm64 -t pebble-fuji --push .

Run with:
>docker run -d -p 8080:8080 -p 8443:8443 pebble-fuji

***NEW!***
Access in a browser (TLS-protected, accept warnings about the self-signed certificate)
>https://localhost:8443/pebble/

Access in a browser (insecure)
>http://localhost:8080/pebble/

Source code available on the container filesystem at
/root/pebble-2.6.4
or from the source repository at:
[https://sourceforge.net/projects/pebble/](https://sourceforge.net/projects/pebble/files/pebble/2.6.4/)
