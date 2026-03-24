FROM caddy:2.11.2-builder AS builder

RUN xcaddy build v2.11.2 \
    --with github.com/caddy-dns/lego-deprecated

FROM caddy:2.11.2

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
