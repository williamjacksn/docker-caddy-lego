FROM caddy:2.4.0-builder AS builder

RUN xcaddy build --with github.com/caddy-dns/lego-deprecated

FROM caddy:2.3.0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
