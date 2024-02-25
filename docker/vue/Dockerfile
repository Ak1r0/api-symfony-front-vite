#syntax=docker/dockerfile:1.4

FROM node:lts-alpine AS frontend_base

WORKDIR /app

# Install dependencies using PNPM
RUN npm install -g pnpm

# Expose port 3000 for Vite development server
EXPOSE 3000

COPY --link --chmod=755 docker-entrypoint.sh /usr/local/bin/docker-entrypoint

ENTRYPOINT ["docker-entrypoint"]

FROM frontend_base AS frontend_dev

COPY --link vite.config.ts /usr/local/etc/vite.config.ts

CMD [ "pnpm", "dev"]

FROM frontend_base AS frontend_prod

COPY --link /app ./
