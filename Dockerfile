FROM caddy:2.6.1-builder AS builder

RUN xcaddy build v2.6.0 \
    --with github.com/caddy-dns/lego-deprecated

FROM caddy:2.6.1

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
