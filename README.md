# To build:

docker buildx create --name mybuilder

docker buildx use mybuilder

docker buildx inspect --bootstrap

docker buildx build --platform linux/amd64,linux/arm64 -t dockerhubuser/pushpin --push .