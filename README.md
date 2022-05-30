# pebble
 Pebble Fuji docker image

Re-built on docker desktop 4.8.2 using

* >docker buildx create --use
* >docker buildx build --platform linux/amd64,linux/arm64 -t pebble-fuji --push .

Run with:
>docker run -d -p 8080:8080 pebble-fuji

Access in a browser:
>http://localhost:8080/pebble/
