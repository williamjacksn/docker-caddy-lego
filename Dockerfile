FROM caddy:2.0.0-builder AS builder

RUN xcaddy build v2.0.0 --with github.com/caddy-dns/lego-deprecated

FROM caddy:2.0.0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
