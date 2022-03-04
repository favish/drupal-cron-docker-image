FROM alpine:3.3

# wget/curl need openssl for https
RUN apk --no-cache add ca-certificates \
    openssl \
    curl \
    wget \
    && update-ca-certificates

COPY entrypoint.sh /entrypoint.sh

CMD /entrypoint.sh
