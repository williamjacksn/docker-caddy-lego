FROM caddy:2.4.5-builder AS builder

RUN xcaddy build --with github.com/caddy-dns/lego-deprecated

FROM caddy:2.4.5-builder

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
