FROM caddy:2.2.1-builder-alpine as build

RUN xcaddy build \
  --with github.com/kirsch33/realip

FROM caddy:2.2.1-alpine

COPY --from=build /usr/bin/caddy /usr/bin/caddy
