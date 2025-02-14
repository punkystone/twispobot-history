FROM node:22.13.1-alpine AS builder
WORKDIR /builder
COPY package.json pnpm-lock.yaml ./
RUN npm i -g pnpm
RUN pnpm install
COPY . .
RUN pnpm build

FROM nginx:mainline-alpine
COPY  --from=builder /builder/build/ /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/