FROM caddy:2.5.0-builder AS builder

RUN xcaddy build --with github.com/caddy-dns/lego-deprecated

FROM caddy:2.5.0-builder

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
