FROM caddy:2.0.0-builder AS builder

ENV CADDY_VERSION="2.0.0"
RUN caddy-builder github.com/caddy-dns/lego-deprecated

FROM caddy:2.0.0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
