FROM node:alpine as build

WORKDIR /var/www

COPY . .

FROM nginx:1.21.6-alpine
COPY --from=build /var/www /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
