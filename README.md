# iperf2 docker

## Building

To setup the cross compile build environmentg
```
sudo apt-get docker-ce docker-ce-cli containerd.io install binfmt-support qemu-user-static
docker buildx create --use --name cross-platform-build
```

To check the platforms we can build
```
docker buildx inspect --bootstrap cross-platform-build
```

To build and push at the same time
```
docker buildx build -f Dockerfile --platform linux/amd64,linux/arm64,linux/arm/v7,linux/arm/v6 -t visago/iperf2 --push .
```

## Running

```
docker run -d --rm -p 5001:5001 --name iperf2 visago/iperf2
```
