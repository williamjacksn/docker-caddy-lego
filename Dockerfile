FROM caddy:2.6.4-builder AS builder

RUN xcaddy build v2.6.3 \
    --with github.com/caddy-dns/lego-deprecated

FROM caddy:2.6.4

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
