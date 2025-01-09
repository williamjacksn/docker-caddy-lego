FROM caddy:2.9.1-builder AS builder

RUN xcaddy build v2.8.4 \
    --with github.com/caddy-dns/lego-deprecated

FROM caddy:2.9.1

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
