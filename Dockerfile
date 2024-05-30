FROM caddy:2.8.0-builder AS builder

RUN xcaddy build v2.7.6 \
    --with github.com/caddy-dns/lego-deprecated

FROM caddy:2.8.0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
