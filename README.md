# pebble
 Pebble Fuji docker image

Re-built on docker desktop 4.15.0 using

* >docker buildx create --use
* >docker buildx build --platform linux/amd64,linux/arm64 -t pebble-fuji --push .

Run with:
>docker run -d -p 8080:8080 pebble-fuji

Access in a browser:
>http://localhost:8080/pebble/

Source code available on the container filesystem at
/root/pebble-2.6.4
or from the source repository at:
[https://sourceforge.net/projects/pebble/](https://sourceforge.net/projects/pebble/files/pebble/2.6.4/)
