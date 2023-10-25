FROM caddy:2.7.5-builder AS builder

RUN xcaddy build v2.7.5 \
    --with github.com/caddy-dns/lego-deprecated

FROM caddy:2.7.5

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
