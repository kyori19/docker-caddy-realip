FROM caddy:2.2.1-builder-alpine as build

RUN xcaddy build \
  --with "github.com/kirsch33/realip@9c8b5f86b90c3a5c81d81419820ee28646afa42c"

FROM caddy:2.2.1-alpine

COPY --from=build /usr/bin/caddy /usr/bin/caddy
