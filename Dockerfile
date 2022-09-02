FROM nginx:stable-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY ../cert/oasip-ssi4.crt /etc/ssl/certs/oasip-ssi4.crt
COPY ../cert/oasip-ssi4.key /etc/ssl/private/oasip-ssi4.key
EXPOSE 443
CMD ["nginx","-g","daemon off;"]