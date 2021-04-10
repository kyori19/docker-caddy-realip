FROM caddy:2.3.0-builder-alpine as build

RUN xcaddy build \
  --with "github.com/kirsch33/realip@8fd479b5fe674d3d611838754cd697c36af859c0"

FROM caddy:2.3.0-alpine

COPY --from=build /usr/bin/caddy /usr/bin/caddy
