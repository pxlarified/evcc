mkdir -p /tmp/docker-nocreds && printf '{"auths":{}}\n' > /tmp/docker-nocreds/config.json && DOCKER_CONFIG=/tmp/docker-nocreds docker buildx build --platform linux/arm64 -t evccplus:latest --load .

docker save evccplus:latest -o evccplus.tar
