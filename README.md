# pebble
 Pebble Fuji docker image

Built on docker desktop 3.4 using

* >docker buildx create --use
* >docker buildx build --platform linux/amd64,linux/arm64 -t pebble-fuji --push .

Run with:
>docker run -d -p 8080:8080 pebble-fuji
