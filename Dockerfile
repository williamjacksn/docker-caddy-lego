FROM caddy:2.10.0-builder AS builder

RUN xcaddy build v2.9.1 \
    --with github.com/caddy-dns/lego-deprecated

FROM caddy:2.10.0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
