# sudo apt-get docker-ce docker-ce-cli containerd.io install binfmt-support qemu-user-static
# docker buildx create --use --name cross-platform-build
# docker buildx inspect --bootstrap cross-platform-build
docker buildx build -f Dockerfile --platform linux/amd64,linux/arm64,linux/arm/v7,linux/arm/v6 -t visago/iperf2 --push .
