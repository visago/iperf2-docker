FROM alpine:latest
RUN apk add --no-cache iperf && adduser -S iperf
USER iperf
EXPOSE 5001/tcp
ENTRYPOINT ["iperf"]
HEALTHCHECK CMD iperf -n 1 -c 127.0.0.1 || exit 1
CMD ["-s"]
